#ifndef APPCORE_H
#define APPCORE_H
//#include <QQmlContext>
#include <QObject>
#include <QDebug>
#include <string.h>
#include"process.h"
using namespace std;

class AppCore : public QObject
{
    Q_OBJECT

public:
    explicit AppCore(QObject *parent = nullptr);

public: signals:
    void sendToQml(QString cmd1);
    void plusSignal(int count);
    void cpuInfoSignal(QString cpuInfo);
    void devicesSignal(QString devices);
    void memInfoSignal(QString memInfo);
    void cpuSignal(QString cpu);
    void lab31signal();
    void lab32signal(QString led1);
    void lab33signal();
public slots:
    void receiveFromQml();
    void plusSlot();
    void cpuInfoSlot();
    void devicesSlot();
    void memInfoSlot();
    void cpuSlot();
    void lab31slot();
    void lab32slot();
    void lab33slot();


public:
    QString cmd1;
    int count;
    QString cpuInfo;
    QString devices;
    QString memInfo;
    QString cpu;
    QString led1;
};

#endif // APPCORE_H
