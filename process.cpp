#include "process.h"
#include<string.h>
#include<fstream>
using namespace std;
Process::Process(QObject *parent) : QObject(parent)
{

}

string Process::receiveFromQml()
{
    string cmd="dmesg|grep -i usb >/home/dreader/dmesg.txt";
    system(cmd.c_str());
    ifstream fin("/home/dreader/dmesg.txt");

    if(fin.is_open())
    {
        while(getline(fin,cmd))
        {
            cmd2 = cmd2+QString::fromStdString(cmd);
        }
    }

    fin.close();
    emit SendQml(cmd2);
    return cmd2.toStdString();
}
