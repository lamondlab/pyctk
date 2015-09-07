class ctkPixmapIconEngine : public QIconEngine
{

%TypeHeaderCode
#include "ctkPixmapIconEngine.h"
%End

public:
    ctkPixmapIconEngine();
    ctkPixmapIconEngine(const ctkPixmapIconEngine &);
    ~ctkPixmapIconEngine();
    void paint(QPainter *painter, const QRect &rect, QIcon::Mode mode, QIcon::State state);
    QPixmap pixmap(const QSize &size, QIcon::Mode mode, QIcon::State state);
    //ctkPixmapIconEngineEntry *bestMatch(const QSize &size, QIcon::Mode mode, QIcon::State state, bool sizeOnly);
    QSize actualSize(const QSize &size, QIcon::Mode mode, QIcon::State state);
    void addPixmap(const QPixmap &pixmap, QIcon::Mode mode, QIcon::State state);
    void addFile(const QString &fileName, const QSize &size, QIcon::Mode mode, QIcon::State state);
    QString key() const;
    QIconEngine *clone() const;
    bool read(QDataStream &in);
    bool write(QDataStream &out) const;
    void virtual_hook(int id, void *data);

private:
    //ctkPixmapIconEngineEntry *tryMatch(const QSize &size, QIcon::Mode mode, QIcon::State state);
};