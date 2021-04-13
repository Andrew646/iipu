#ifndef KEYBOARDWORKER_H
#define KEYBOARDWORKER_H

#include <QObject>
#include <QDebug>
using namespace std;

class keyBoardWorker : public QObject
{
    Q_OBJECT
public:
    explicit keyBoardWorker(QObject *parent = 0);
public: signals:
    void sendQml(QString cmd2);

    void lab32Signal(QString led1);
public slots:
    void lightUpIndicators();
    void invertindicators();
    void handleQmlKey();
public:
    QString cmd2;
    int count;
    QString led1;
};

#endif // KEYBOARDWORKER_H
