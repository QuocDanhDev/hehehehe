import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import "qrc:/Component/"

Rectangle {
    width: parent.width
    height: parent.height
    color: "black"
    ItemMenu {
        id: idMenu
        width: parent.width*0.1
    }

    ItemNavbar {
        id: idNavbar
        height: parent.height*0.1
        bg_radius: true
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.left: idMenu.right
        anchors.leftMargin: 10
        name: "Vũ Nguyễn"
    }
    Rectangle {
        id: contentSys
        color: "black"
        anchors.top: idNavbar.bottom
        anchors.topMargin: 10
        anchors.left: idMenu.right
        anchors.leftMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        ItemContent{
            id: idContent
            width: contentSys.width
            height: contentSys.height
            bg_color: "#1E1E1E"
        }
    }
}
