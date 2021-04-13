import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Controls.Styles 1.4

Window{
    id: win
    signal signalExit
    visible: false
    width: 1920
    height: 1080
    color: "#a46dda"
    title: qsTr("Hello World")
    SwipeView {
        id: swipeView2
        x: 0
        y: 0
        width: 1920
        height: 1080
        Item {
            id: name4
            width: 1920
            height: 1080
    Button {
        id: button4
        x: 80
        y: 498
        width: 100
        height: 100
        text: qsTr("Button")
        wheelEnabled: true
        highlighted: true
        onClicked: {
            win.signalExit()
        }
    }
    Rectangle {
        id: rectangle
        x: 237
        y: 97
        width: 1000
        height: 500
        color: "#ffffff"
        radius: 20
    }
    Text {
        id: sagolov
        x: 665
        y: 102
        text: qsTr("Dmesg")
        font.pointSize: 21
    }
    ScrollView{
        id:scrol
        x:237
        y:97
        anchors.rightMargin: 984
        anchors.bottomMargin: 488
        anchors.leftMargin: 254
        anchors.topMargin: 121
        anchors.fill: parent
        contentWidth: availableWidth
        clip: true
    Text {
        id: text1
        x: 237
        y: 97
        width: 901
        height: 350
        verticalAlignment: Text.AlignTop
        elide: Text.ElideNone
        anchors.fill: parent
        wrapMode: Text.WordWrap
        color: "#000000"
        text: str1
      horizontalAlignment: Text.AlignLeft
      font.family: "Motserrat"
    }

}
}
        Item {
            id: name5
            width: 1920
            height: 1080
            Rectangle {
                id: rectangle2
                x: 237
                y: 97
                width: 1000
                height: 500
                color: "#ffffff"
                radius: 20
            }
            Text {
                id: sagolov2
                x: 665
                y: 102
                text: qsTr("CpuInfo")
                font.pointSize: 21
            }
            Button {
                id: button5
                x: 80
                y: 498
                width: 100
                height: 100
                text: qsTr("Button")
                wheelEnabled: true
                highlighted: true
                onClicked: {
                    win.signalExit()
                }
            }
            ScrollView{
                id:scrol2
                x:237
                y:97
                anchors.rightMargin: 984
                anchors.bottomMargin: 488
                anchors.leftMargin: 254
                anchors.topMargin: 121
                anchors.fill: parent
                contentWidth: availableWidth
                clip: true
            Text {
                id: text2
                x: 237
                y: 97
                width: 901
                height: 350
                verticalAlignment: Text.AlignTop
                elide: Text.ElideNone
                anchors.fill: parent
                wrapMode: Text.WordWrap
                color: "#000000"
                text: str2
              horizontalAlignment: Text.AlignLeft
              font.family: "Motserrat"
            }
        }
       }
        Item {
            id: name6
            width: 1920
            height: 1080
            Rectangle {
                id: rectangle3
                x: 237
                y: 97
                width: 1000
                height: 500
                color: "#ffffff"
                radius: 20
            }
            Text {
                id: sagolov3
                x: 665
                y: 102
                text: qsTr("MemInfo")
                font.pointSize: 21
            }
            Button {
                id: button6
                x: 80
                y: 498
                width: 100
                height: 100
                text: qsTr("Button")
                wheelEnabled: true
                highlighted: true
                onClicked: {
                    win.signalExit()
                }
            }
            ScrollView{
                id:scrol3
                x:237
                y:97
                anchors.rightMargin: 984
                anchors.bottomMargin: 488
                anchors.leftMargin: 254
                anchors.topMargin: 121
                anchors.fill: parent
                contentWidth: availableWidth
                clip: true
            Text {
                id: text3
                x: 237
                y: 97
                width: 901
                height: 350
                verticalAlignment: Text.AlignTop
                elide: Text.ElideNone
                anchors.fill: parent
                wrapMode: Text.WordWrap
                color: "#000000"
                text: str
              horizontalAlignment: Text.AlignLeft
              font.family: "Motserrat"
            }
        }
       }
        Item {
            id: name7
            width: 1920
            height: 1080
            Rectangle {
                id: rectangle4
                x: 237
                y: 97
                width: 1000
                height: 500
                color: "#ffffff"
                radius: 20
            }
            Text {
                id: sagolov4
                x: 665
                y: 102
                text: qsTr("Devices")
                font.pointSize: 21
            }
            Button {
                id: button7
                x: 80
                y: 498
                width: 100
                height: 100
                text: qsTr("Button")
                wheelEnabled: true
                highlighted: true
                onClicked: {
                    win.signalExit()
                }
            }
            ScrollView{
                id:scrol4
                x:237
                y:97
                anchors.rightMargin: 984
                anchors.bottomMargin: 488
                anchors.leftMargin: 254
                anchors.topMargin: 121
                anchors.fill: parent
                contentWidth: availableWidth
                clip: true
            Text {
                id: text4
                x: 237
                y: 97
                width: 901
                height: 350
                verticalAlignment: Text.AlignTop
                elide: Text.ElideNone
                anchors.fill: parent
                wrapMode: Text.WordWrap
                color: "#000000"
                text: str3
              horizontalAlignment: Text.AlignLeft
              font.family: "Motserrat"
            }
            }
        }
        Item {
            id: name8
            width: 1920
            height: 1080
            Rectangle {
                id: rectangle5
                x: 237
                y: 97
                width: 1000
                height: 500
                color: "#ffffff"
                radius: 20
            }
            Text {
                id: sagolov5
                x: 665
                y: 102
                text: qsTr("Laba 4")
                font.pointSize: 21
            }
            Button {
                id: button8
                x: 80
                y: 498
                width: 100
                height: 100
                text: qsTr("Button")
                wheelEnabled: true
                highlighted: true
                onClicked: {
                    win.signalExit()
                }
            }
            ScrollView{
                id:scrol5
                x:237
                y:97
                anchors.rightMargin: 984
                anchors.bottomMargin: 488
                anchors.leftMargin: 254
                anchors.topMargin: 121
                anchors.fill: parent
                contentWidth: availableWidth
                clip: true
            Text {
                id: text5
                x: 237
                y: 97
                width: 901
                height: 350
                verticalAlignment: Text.AlignTop
                elide: Text.ElideNone
                anchors.fill: parent
                wrapMode: Text.WordWrap
                color: "#000000"
                text: str4
              horizontalAlignment: Text.AlignLeft
              font.family: "Motserrat"
            }
            }
        }
 }
}

