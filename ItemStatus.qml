import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    property bool statusled: fales
    property string name
    id: root
    Rectangle{
        id: itemStatusK
        width: root.width
        height: root.height
        color: "#141414"
        radius: 50
            Text {
                text: qsTr(name)
                color: "White"
                font.pixelSize: itemStatusK.width*0.08
                anchors.verticalCenter: itemStatusK.verticalCenter
                anchors.left: itemStatusK.left
                anchors.leftMargin: itemStatusK.width*0.08
            }
            Rectangle {
                color: statusled ? "#0ECF0A" : "#343434"
                width: itemStatusK.width*0.08
                height: width
                radius: itemStatusK.width*0.08
                anchors.verticalCenter: itemStatusK.verticalCenter
                anchors.right: itemStatusK.right
                anchors.rightMargin: itemStatusK.width*0.1
            }
    }
}

