make clean
rm -rf modules
find . -name "*.dylib" -type l -delete
find . -name "*.dylib" -type f -delete
find . -name "Makefile" -type f -delete