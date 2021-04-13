
import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0

Window {
    property string str: ""
    property string str1: ""
    property string str2: ""
     property string str3: ""
    property string str4: ""
    property int animationDuration: 500
    property bool work32: false
    property string led2: ""
    id: window
    visible: true
    width: 1920
    height: 1080
    color: "#a46dda"
    title: qsTr("Hello World")
    Connections {
        target: _appCore
        onSendToQml: {
            str1=cmd1
        }
        onCpuInfoSignal: {
         str2=cpuInfo
        }
        onMemInfoSignal: {
         str=memInfo
        }
        onDevicesSignal:{
            str3=devices
        }
        onCpuSignal: {
            str4=cpu
        }
        onLab32signal:
        {
            codeOfIndicators.text =  led1;
            led2 = led1;
        }
    }
    SwipeView {
        id: swipeView
        x: 0
        y: 0
        width: 1920
        height: 1080
        Item {
            id: name
            width: 1920
            height: 1080


            Button {
                id: button
                x: 1101
                y: 294
                width: 100
                height: 100
                text: qsTr("Green")
                highlighted: true

                    Text{
                        horizontalAlignment: Text.AlignHCenter
                    }


                onClicked: {
                   // window.color = Qt.rgba(Math.46,10,10(),Math.46,10,10(),Math.46,10,10());
                   window.color = '#2A4D2F';

                }

        }



            Button {
                id: button1
                x: 1101
                width: 100
                height: 100
                text: qsTr("Random")
                highlighted: true
                anchors.top: parent.top
                anchors.topMargin: 91

                    Text{
                        horizontalAlignment: Text.AlignHCenter
                    }
                onClicked: {
                    window.color = Qt.rgba(Math.random(),Math.random(),Math.random());
                }
         }

            Button {
                id: button2
                x: 1101
                y: 490
                width: 100
                height: 100
                text: qsTr("     Red      ")
                focusPolicy: Qt.ClickFocus
                highlighted: true
                onClicked: {
                    window.color = '#D11E23';
                }
            }

            Button {
                x: 120
                y: 91
                width: 100
                height: 100
                text: qsTr("Info")
                font.family: "Tahoma"
                highlighted: true

                onClicked: {
                    first.show()
                    window.hide()
                    _appCore.receiveFromQml()
                    _appCore.cpuInfoSlot()
                    _appCore.devicesSlot()
                    _appCore.memInfoSlot()
                    _appCore.cpuSlot()
                }

            }
            MyComponent {
                           id: first
                           onSignalExit: {
                               first.close()
                               window.show()
                           }
                       }



            Text {
                id: text1
                x: 1122
                y: 35
                width: 85
                height: 20
                text: "Цвет меню!"
                scale: 2
                font.pixelSize: 12
            }

            Button {
                id: button3
                x: 100
                y: 891
                width: 100
                height: 100
                text: qsTr("Button")
                highlighted: true
            }

        }
        Item {
            id: name2
            width: 1920
            height:1080
            Rectangle{
                width: 1920
                height: 1080
                color: "red"
            }
        }
        Item {
            id: name3
            width: 1920
            height:1080
            Rectangle{
                width: 1920
                height: 1080
                color: "blue"
                radius: 17
            }
        }
        Item {
            id: name4
            width: 1920
            height:1080
            focus: true
            Rectangle {
                id: rectangle
                x: 0
                y: 8
                z:2
                width: 640
                height: 472
                color: "#FFDEAD"
                anchors.fill: parent


                Text {
                    id: keyCode
                    text: "wipe the system"
                    visible: true
                    x: 653
                    y: 429
                    color: "WHITE"
                }

                Text {
                    id: information
                    x: 970
                    y: 400
                    text: "Нажмите клавишу любого индикатора"
                    color: "white"
                    state: "inf"
                }
                Text {
                    x: 767
                    y: 595
                    text: "Caps Lock"
                    color: "white"
                }

                Text {
                    x: 1210
                    y: 800
                    text: "Num Lock"
                    color: "white"
                }

                Text {
                    id: codeOfIndicators
                    x: 500
                    y: 900
                    visible: false
                    text: ""
                    color: "white"
                }

                TextArea {
                    id: text2
                    x: 270
                    y: 429
                    width: 146
                    height: 82
                    text: qsTr("Text Area")
                }
                Keys.onPressed:
                {

                    keyCode.text = event.key

                    if(event.key === Qt.Key_1)
                    {

                        _appCore.lab31slot()
                         timerLab31.running = true;
                    }
                    if(event.key === 16777235 )
                    {
                        work32 = true;
                    }
                    else if(event.key === 16777237 )
                    {
                        work32 = false;
                    }
                    if(event.key>=16777264 && event.key<=16777275)
                    {
                        _appCore.lab33slot();
                    }
                }
                Timer {
                    id: timerLab31
                    interval: 2000
                    running: false
                    repeat: false
                    onTriggered: {
                    _appCore.lab31slot();
                    }
                }
                Timer {
                     interval: 15
                     running: true
                     repeat: true
                     onTriggered: {_appCore.lab32slot()

                         if(work32==true){
                             information.state = "onnn";
                             switch(led2)
                             {
                             case "1004":
                                 text2.text = "caps i num ne gorit"

                                 break;
                             case "0000":
                               text2.text = "caps  i num ne gorit"

                                 break;
                             case "1005":
                                  text2.text = "gorit caps"

                                 break;
                             case "0001":
                                    text2.text = "gorit caps"

                                 break;
                             case "1006":
                                  text2.text = "gorit num"

                                 break;
                             case "0002":

                                  text2.text = "gorit num"

                                 break;
                             case "1007":
                                      text2.text = " gorit caps i num"
                                 break;
                             case "0003":
                                      text2.text = " gorit caps i num"
                                 break;
                                 // }
                             }
                         }
                         if(work32==false)
                         {
                             information.state = "offf";


                         }
                     }

        }
    }

}
    }
}


