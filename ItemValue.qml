import QtQuick 2.15
import QtQuick.Controls 2.15

Item {

    property color m_color
    property real m_value
    property color m_colorValue: "white"
    property string m_lable
    id:root
    Rectangle{
        id: system
        width: root.width
        height: root.height
        color: "#00fe0101"
        //color: "green"
        Row{
            spacing: 8
//            anchors.horizontalCenter: parent.horizontalCenter
            anchors.left: idRec.left
            anchors.leftMargin: idRec.width*0.1
            anchors.bottom: idRec.top
            Rectangle{
                id: idPoint
                color: m_colorValue
                width: system.width*0.1
                height: width
                radius: system.width*0.1
            }

            Label{
                id:labe
                text: m_lable
                color: "white"
                font.pixelSize: system.width*0.2
                anchors.verticalCenter:idPoint.verticalCenter
            }
        }
        Rectangle{
            id:idRec
            width: system.width
            height: width
            color: m_color
            anchors.bottom:system.bottom
            radius: 5
            Text {
                id: idValue
                text: m_value
                font.pixelSize: idRec.width*0.3
                font.bold: true
                color: m_colorValue
                anchors.centerIn: parent

            }
        }

    }
}
