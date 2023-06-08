import QtQuick 2.15
import QtQuick.Controls 2.15
import "qrc:/Component/"
import "qrc:/Icon/"

Item {
    id: root
    property color bg_color
    property color colorValue
    property bool bg_radius: true
    property real value
    Rectangle{
        id: system
        width: root.width
        height: root.height
        color: "#00fe0101"
        Row{
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            Rectangle{
                id: buttonSum
                width: system.width*0.3
                height: width
                radius: bg_radius ? 3 : 0
                color: bg_color
                anchors.verticalCenter: valueEdit.verticalCenter
                Image {
                    id: sum_logo
                    source: "../Icon/plus.svg"
                    width: buttonSum.height*0.5
                    height: width
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
            Rectangle{
                id: valueEdit
                width: system.width*0.5
                height: width
                radius: bg_radius ? 3 : 0
                color: colorValue
                Text {
                    id: idValue
                    text: value
                    font.pixelSize: valueEdit.width*0.3
                    font.bold: true
                    color: "white"
                    anchors.centerIn: parent

                }
            }
            Rectangle{
                id: buttonSub
                width: system.width*0.3
                height: width
                radius: bg_radius ? 3 : 0
                color: bg_color
                anchors.verticalCenter: valueEdit.verticalCenter
                Image {
                    id: sub_logo
                    source: "../Icon/minus.svg"
                    width: buttonSub.height*0.5
                    height: width
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }
}
