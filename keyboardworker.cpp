#include "keyboardworker.h"
#include<fstream>
#include<stdio.h>
#include<string>
#include<sstream>
#include<iostream>
#include <unistd.h>
#include <cstdio>
using namespace std;


keyBoardWorker::keyBoardWorker(QObject *parent) : QObject(parent)
{

}

void keyBoardWorker::lightUpIndicators(){
    system("xdotool key Caps_Lock" );
    system("xdotool key Num_Lock" );
    system("xdotool key Scroll_Lock" );
    sleep(2);
    system("xdotool key Caps_Lock" );
    system("xdotool key Num_Lock" );
    system("xdotool key Scroll_Lock" );
}
void keyBoardWorker::invertindicators(){
    system("xdotool key Caps_Lock" );
    system("xdotool key Num_Lock" );
    system("xdotool key Scroll_Lock" );
}

void keyBoardWorker::handleQmlKey(){
    string led = "xset q | grep LED>/home/maks/LED.txt";
    system(led.c_str());

    ifstream fin("/home/maks/LED.txt");

    if (fin.is_open())
    {
        while (getline(fin, led))
        {
            led1=cmd2+QString::fromStdString(led.erase(0,62));
        }
    }

    fin.close();
    emit lab32Signal(led1);
    led1="";
}



