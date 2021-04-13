#ifndef MAINWIN_H
#define MAINWIN_H

#include <QObject>
#include <QDebug>
using namespace std;


class Process : public QObject
{
Q_OBJECT
public:

explicit Process(QObject *parent = 0);

signals:
    string SendQml(QString cmd1);

public slots:
    string receiveFromQml();

private:
    QString cmd2;
};
#endif // MAINWIN_H
