class ctkException : public std::exception, public ctkBackTrace
{

%TypeHeaderCode
#include "ctkException.h"
%End

public:

  // class TraceManipulator
  // {
  // public:

  //   TraceManipulator(const ctkException* e);

  //   QDebug print(QDebug dbg) const;

  // private:

  //   const ctkException* Exc;
  // };

  // /**
  //  * @brief Create a new ctkException.
  //  * @param msg The exception message.
  //  */
  // explicit ctkException(const QString& msg);

  // /**
  //  * @brief Create a new ctkException containing another exception as the cause.
  //  * @param msg The exception message.
  //  * @param cause The nested exception causing this exception.
  //  */
  // ctkException(const QString& msg, const ctkException& cause);

  // /**
  //  * @brief Copy constructor.
  //  * @param o The exception to copy.
  //  */
  // ctkException(const ctkException& o);

  // /**
  //  * @brief Assignment operator.
  //  * @param o The exception to assign to this exception.
  //  * @return
  //  */
  // ctkException& operator=(const ctkException& o);

  // ~ctkException() throw();

  // /**
  //  * @brief Gets the nested exception which caused this exception.
  //  * @return The nested exception, or <code>NULL</code> if there is none.
  //  */
  // const ctkException* cause() const throw();

  // /**
  //  * @brief Sets the cause for this exception.
  //  * @param cause The exception causing this exception.
  //  */
  // void setCause(const ctkException& cause);

  // /**
  //  * @brief Returns the name for this exception.
  //  * @return The exception name.
  //  */
  // virtual const char* name() const throw();

  // /**
  //  * @brief Returns the class name for this exception.
  //  * @return The exception class name.
  //  */
  // virtual const char* className() const throw();

  // /**
  //  * @brief Returns a static string describing this exception.
  //  * @return The exception description.
  //  */
  // virtual const char* what() const throw();

  // /**
  //  * @brief Returns the detail message string of this exception.
  //  * @return The detail exception message.
  //  */
  // QString message() const throw();

  // /**
  //  * @brief Returns an object suitable for printing this executable
  //  * and its backtrace via qDebug().
  //  *
  //  * Example usage:
  //  * \code
  //  * ctkException exc("My error");
  //  * qDebug() << exc.printStackTrace();
  //  * \endcode
  //  *
  //  * @return A helper object for streaming to qDebug().
  //  */
  // TraceManipulator printStackTrace() const;

  // /**
  //  * @brief Creates a copy of this exception. Use rethrow() to throw the
  //  * copy again.
  //  * @return A copy of this exception.
  //  */
  // virtual ctkException* clone() const;

  // /**
  //  * @brief (Re)Throws this exception.
  //  */
  // virtual void rethrow() const;

protected:

  //friend class TraceManipulator;

  /**
   * @brief Print the stack trace of this exception using the given QDebug object.
   * @param dbg
   * @return
   */
  virtual QDebug printStackTrace(QDebug dbg) const;

// private:

//   QString Msg;
//   mutable std::string WhatMsg;
//   ctkException* NestedException;

//   void printEnclosedStackTrace(QDebug dbg, const QList<QString>& enclosingTrace,
//                                const QString& caption, const QString& prefix,
//                                QSet<const ctkException*>& dejaVu);

};