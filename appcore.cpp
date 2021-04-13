#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QQmlContext>
#include <appcore.h>
#include <fstream>
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <QFile>
#include <string.h>
#include <fstream>

using namespace std;

AppCore::AppCore(QObject *parent):QObject(parent)
{
   count=0;
}

void AppCore::receiveFromQml()
{

    string cmd = "dmesg>/home/maks/file.txt";
    system(cmd.c_str());

    ifstream fin("/home/maks/file.txt");

        if (fin.is_open())
        {
            while (getline(fin, cmd))
            {
                cmd1=cmd1+"\n"+QString::fromStdString(cmd);
            }
        }

    fin.close();
    emit sendToQml(cmd1);
    cmd1="";

}


void AppCore::plusSlot()
{
    count++;
    emit plusSignal(count);
}

void AppCore::cpuInfoSlot()
{
  string cmd = "";
    ifstream fin("/proc/cpuinfo");


        if (fin.is_open())
        {
            while (getline(fin, cmd))
            {
                cpuInfo=cpuInfo+"\n"+QString::fromStdString(cmd);
            }
        }

    fin.close();
    emit cpuInfoSignal(cpuInfo);
    cpuInfo="";

}
void AppCore::cpuSlot()
{
  string cmd = "";
    ifstream fin("/home/maks/fail.txt");


        if (fin.is_open())
        {
            while (getline(fin, cmd))
            {
                cpu=cpu+"\n"+QString::fromStdString(cmd);
            }
        }

    fin.close();
    emit cpuSignal(cpu);
    cpu="";

}


void AppCore::devicesSlot()
{

    ifstream fin("/proc/devices");

    string cmd = "";
        if (fin.is_open())
        {
            while (getline(fin, cmd))
            {
                devices=devices+"\n"+QString::fromStdString(cmd);
            }
        }

    fin.close();
    emit devicesSignal(devices);
    devices="";

}

void AppCore::memInfoSlot()
{

    ifstream fin("/proc/meminfo");

    string cmd = "";
        if (fin.is_open())
        {
            while (getline(fin, cmd))
            {
                memInfo=memInfo+"\n"+QString::fromStdString(cmd);
            }
        }

    fin.close();
    emit memInfoSignal(memInfo);
    memInfo="";

}
void AppCore::lab31slot()
{
    system("xdotool key Caps_Lock && xdotool key --delay 6000 Caps_Lock");

    system("xdotool key Caps_Lock && xdotool key Num_Lock");
}

void AppCore::lab32slot()
{
    string led = "xset q | grep LED>/home/maks/LED.txt";
    system(led.c_str());

    ifstream fin("/home/maks/LED.txt");

    if (fin.is_open())
    {
        while (getline(fin, led))
        {
            led1=cmd1+QString::fromStdString(led.erase(0,62));
        }
    }

    fin.close();
    emit lab32signal(led1);
    led1="";
}

void AppCore::lab33slot()
{

    system("xdotool key Num_Lock");

    system("xdotool key Caps_Lock");
}


