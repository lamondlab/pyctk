# ===========================================================================
#
#   Library:  PyCTK
#   Filename: configure.py
#
#   Copyright (c) 2015 Lamond Lab
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0.txt
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
# ===========================================================================

from PyQt5.QtCore import PYQT_CONFIGURATION as pyqt_config
from distutils import sysconfig
import os, sipconfig, sys

class HostPythonConfiguration(object):
    def __init__(self):
        self.platform=sys.platform
        self.version=sys.hexversion>>8

        self.inc_dir=sysconfig.get_python_inc()
        self.venv_inc_dir=sysconfig.get_python_inc(prefix=sys.prefix)
        self.module_dir=sysconfig.get_python_lib(plat_specific=1)

        if sys.platform=='win32':
            self.data_dir=sys.prefix
            self.lib_dir=sys.prefix+'\\libs'
        else:
            self.data_dir=sys.prefix+'/share'
            self.lib_dir=sys.prefix+'/lib'

class TargetQtConfiguration(object):
    def __init__(self, qmake):
        pipe=os.popen(' '.join([qmake, '-query']))

        for l in pipe:
            l=l.strip()

            tokens=l.split(':', 1)
            if isinstance(tokens, list):
                if len(tokens) != 2:
                    error("Unexpected output from qmake: '%s'\n" % l)

                name,value=tokens
            else:
                name=tokens
                value=None

            name=name.replace('/', '_')
            setattr(self, name, value)

        pipe.close()        

if __name__=="__main__":
    from argparse import ArgumentParser

    parser=ArgumentParser(description="Configure PyCTK module.")
    parser.add_argument(
        '-q', '--qmake',
        dest="qmake",
        type=str,
        default="qmake",
        help="Path to qmake executable"
    )
    parser.add_argument(
        '-s', '--sip-extras',
        dest="sip_extras",
        type=str,
        default="",
        help="Extra arguments to sip"
    )
    args=parser.parse_args()

    qmake_exe=args.qmake
    if not qmake_exe.endswith('qmake'):
        qmake_exe=os.path.join(qmake_exe,'qmake')

    if os.system(' '.join([qmake_exe, '-v']))!=0:
        
        if sys.platform=='win32':
            print("Make sure you have a working Qt qmake on your PATH.")
        else:
            print(
                "Use the --qmake argument to explicitly specify a "
                "working Qt qmake."
            )
        exit(1)

    sip_args=args.sip_extras

    pyconfig=HostPythonConfiguration()
    py_sip_dir=os.path.join(pyconfig.data_dir, 'sip', 'PyQt5')
    sip_inc_dir=pyconfig.venv_inc_dir

    qtconfig=TargetQtConfiguration(qmake_exe)

    inc_dir=os.path.abspath(os.path.join(".","src"))
    lib_dir=inc_dir
    dest_pkg_dir="PyCTK"

    sip_files_dir=os.path.abspath(os.path.join(".","sip"))

    config=sipconfig.Configuration()    
    config.default_mod_dir=( "/usr/local/lib/python%i.%i/dist-packages" %
                               ( sys.version_info.major, sys.version_info.minor ) )

    output_dirs=[]

    ### Make Each Module
    for entry in os.listdir(sip_files_dir):
        fpath=os.path.abspath(os.path.join(sip_files_dir, entry))
        if not os.path.isdir(fpath): continue

        print()
        print("######################################################"+'#'*len(entry))
        print("# Generating C++ wrapper and creating Makefile for: {} #".format(entry))
        print("######################################################"+'#'*len(entry))
        print()

        output_dir =os.path.abspath(os.path.join(".", "modules", entry))
        build_file="{}.sbf".format(entry)
        build_path = os.path.join(output_dir, build_file)
          
        if not os.path.exists(output_dir): os.makedirs(output_dir)
        sip_file = os.path.join(fpath, "{}.sip".format(entry))

        cmd=" ".join([
            config.sip_bin,
            pyqt_config['sip_flags'],
            sip_args,
            '-I', sip_files_dir,
            '-I', os.path.join(sip_files_dir, entry),
            '-I', py_sip_dir,
            '-I', config.sip_inc_dir,
            '-I', inc_dir,
            "-c", output_dir,
            "-b", build_path,
            "-w",
            "-o",
            sip_file,
        ])

        print(cmd)

        if os.system(cmd)!=0: sys.exit(1)
    
        makefile=sipconfig.SIPModuleMakefile(
            config,
            build_file,
            dir=output_dir,
            install_dir=dest_pkg_dir
        )

        makefile.extra_defines+=['CTK_LIBRARY','QT_CORE_LIB', 'QT_GUI_LIB', 'QT_WIDGETS_LIB', 'QT_XML_LIB']
        makefile.extra_include_dirs+=[
            os.path.abspath(inc_dir),
            os.path.abspath(os.path.join(inc_dir, entry)),
            qtconfig.QT_INSTALL_HEADERS
        ]
        makefile.extra_lib_dirs+=[
            qtconfig.QT_INSTALL_LIBS,
            os.path.abspath(inc_dir),
            os.path.join(os.path.abspath(inc_dir),entry),
        ]

        makefile.extra_libs+=[entry]

        if entry!="Core":
            makefile.extra_include_dirs+=[os.path.join(os.path.abspath(inc_dir),"Core")]
            makefile.extra_lib_dirs+=[os.path.join(os.path.abspath(inc_dir),"Core")]
            makefile.extra_libs+=["Core"]

        if sys.platform=='darwin':
            makefile.extra_cxxflags+=['-F'+qtconfig.QT_INSTALL_LIBS]        
            makefile.extra_include_dirs+=[
                os.path.join(qtconfig.QT_INSTALL_LIBS,'QtCore.framework','Headers'),
                os.path.join(qtconfig.QT_INSTALL_LIBS,'QtGui.framework','Headers'),
                os.path.join(qtconfig.QT_INSTALL_LIBS,'QtWidgets.framework','Headers'),
                os.path.join(qtconfig.QT_INSTALL_LIBS,'QtXml.framework','Headers'),
                os.path.join(qtconfig.QT_INSTALL_LIBS,'QtOpenGL.framework','Headers'),
            ]

            makefile.extra_lflags+=[      
                '-F'+qtconfig.QT_INSTALL_LIBS,
                "-framework QtWidgets",
                "-framework QtGui",
                "-framework QtCore",
                "-framework QtXml",
                "-framework DiskArbitration",
                "-framework IOKit",
                "-framework OpenGL",
                "-framework AGL",
            ]

        elif sys.platform=='win32':
            makefile.extra_include_dirs+=[
                os.path.join(qtconfig.QT_INSTALL_HEADERS, "QtCore"),
                os.path.join(qtconfig.QT_INSTALL_HEADERS, "QtGui"),
                os.path.join(qtconfig.QT_INSTALL_HEADERS, "QtWidgets"),
                os.path.join(qtconfig.QT_INSTALL_HEADERS, "QtXml"),
                os.path.join(qtconfig.QT_INSTALL_HEADERS, "QtOpenGL"),
            ]
            makefile.extra_lib_dirs+=[os.path.join('..','..','src',entry,'release')]
            makefile.extra_libs+=['Qt5Core','Qt5Gui','Qt5Widgets','Qt5Xml','Qt5OpenGL','dbghelp']
            makefile.extra_lflags+=['/IGNORE:4217,4049']
            makefile.extra_lflags+=['/LIBPATH:{}'.format(os.path.join('..','..','src',entry,'release'))]

            if entry!="Core":
                    makefile.extra_lflags+=['/LIBPATH:{}'.format(os.path.join('..','..','src','Core','release'))]
        makefile.generate()

        output_dirs.append(output_dir)
    
    sipconfig.ParentMakefile(
        configuration = config,
        subdirs=["src"]+output_dirs
    ).generate()

    os.chdir("src")    
    qmake_cmd=qmake_exe
    if sys.platform=="win32": qmake_cmd+=" -spec win32-msvc2010"
    print()
    print ("####################")
    print ("# Running qmake... #")
    print ("####################")
    print()
    print(qmake_cmd)
    print()
    os.system(qmake_cmd)
    sys.exit()