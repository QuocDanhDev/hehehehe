import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root
    property color bg_color
    property bool bg_radius: true
    property string nameAside
    Rectangle {
        id: system
        width: root.width
        height: root.height
        color: bg_color
        radius: bg_radius ? 10 : 0
        Text {
            id: idStatus
            text: qsTr(nameAside)
            font.pixelSize: system.width*0.05
            color: "white"
            anchors.right: system.right
            anchors.rightMargin: system.width*0.08
            anchors.top: system.top
            anchors.topMargin: system.width*0.1
        }
        Frame {
            id: frameStatus
            //anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: idStatus.bottom
            background: {
                color: "red"
            }
            Column {
                spacing: 8
                ItemStatus{
                    id: idLightSt
                    width: system.width*0.9
                    height: system.height*0.15
                    name: "Light"
                    statusled: true
                }
                ItemStatus{
                    id: idHeatSt
                    width: system.width*0.9
                    height: system.height*0.15
                    name: "Heat"
                    statusled: false
                }
                ItemStatus{
                    id: idCo2St
                    width: system.width*0.9
                    height: system.height*0.15
                    name: "Co2"
                    statusled: true
                }
                ItemStatus{
                    id: idPumpSt
                    width: system.width*0.9
                    height: system.height*0.15
                    name: "Pump"
                    statusled: true
                }
            }
        }
    }
}
