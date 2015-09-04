class ctkConsole : public QWidget
{

%TypeHeaderCode
#include "ctkConsole.h"
%End  
  
public:

  enum EditorHint
  {
    NoHints = 0x00,
    AutomaticIndentation = 0x01, /*!< Align cursor based an indentation of the previous command */
    RemoveTrailingSpaces = 0x02, /*!< Remove trailing spaces of the entered command */
    SplitCopiedTextByLine = 0x4  /*!< Copied text is split by lines and each one is executed (expected the last one) */
  };
  //Q_DECLARE_FLAGS(EditorHints, EditorHint)
  typedef QFlags<ctkConsole::EditorHint> EditorHints;

  ctkConsole(QWidget* parentObject /TransferThis/ = 0);
  virtual ~ctkConsole();

  QTextCharFormat getFormat() const;
  void setFormat(const QTextCharFormat& Format);
  QFont shellFont() const;
  void setShellFont(const QFont& font);
  ctkConsoleCompleter* completer() const;
  void setCompleter(ctkConsoleCompleter* completer);
  QColor promptColor()const;
  void setPromptColor(const QColor& newColor);
  QColor outputTextColor()const;
  void setOutputTextColor(const QColor& newColor);
  QColor errorTextColor()const;
  void setErrorTextColor(const QColor& newColor);
  QColor stdinTextColor()const;
  void setStdinTextColor(const QColor& newColor);
  QColor commandTextColor()const;
  void setCommandTextColor(const QColor& newColor);
  QColor welcomeTextColor()const;
  void setWelcomeTextColor(const QColor& newColor);
  QColor backgroundColor()const;
  void setBackgroundColor(const QColor& newColor);
  EditorHints editorHints()const;
  void setEditorHints(const EditorHints& newEditorHints);
  Qt::ScrollBarPolicy scrollBarPolicy()const;
  void setScrollBarPolicy(const Qt::ScrollBarPolicy& newScrollBarPolicy);
  void printMessage(const QString& message, const QColor& color);
  virtual QString ps1() const;
  virtual void setPs1(const QString& newPs1);
  virtual QString ps2() const;
  virtual void setPs2(const QString& newPs2);
  static QString stdInRedirectCallBack(void * callData);

Q_SIGNALS:
  void aboutToExecute(const QString&);
  void executed(const QString&);

public Q_SLOTS:
  virtual void clear();
  virtual void reset();
  virtual void exec(const QString&);
  virtual void runFile(const QString& filePath);
  virtual void runFile();
  virtual void printHelp();

protected:
  QString readInputLine();
  virtual void executeCommand(const QString& Command);

private:
  ctkConsole(const ctkConsole &);
  ctkConsole &operator=(const ctkConsole &);  
};

//Q_DECLARE_OPERATORS_FOR_FLAGS(ctkConsole::EditorHints);
QFlags<ctkConsole::EditorHint> operator|(ctkConsole::EditorHint f1, QFlags<ctkConsole::EditorHint> f2);

//-----------------------------------------------------------------------------
class ctkConsoleCompleter : public QCompleter
{

%TypeHeaderCode
#include "ctkConsole.h"
%End 

public:
  virtual void updateCompletionModel(const QString& str) = 0;
  QStringList autocompletePreferenceList();
  void setAutocompletePreferenceList(const QStringList& list);
};