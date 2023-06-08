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
            width: contentSys.width*0.7
            height: contentSys.height
            bg_color: "#1E1E1E"
            Rectangle{
                id: framedashboard
                width: idContent.width
                height: idContent.height*0.25
                color: "#1E1E1E"
                anchors.top: idContent.top
                anchors.topMargin: idContent.width*0.05
                ItemValue{
                    id:idTemp
                    width: framedashboard.width*0.16
                    height: framedashboard.height
                    m_lable: "Humi"
                    m_color: "#66B5F8"
                    m_value: 87
                    m_colorValue: "#43a3f5"
                    anchors.left: parent.left
                    anchors.leftMargin: framedashboard.width*0.08
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
        }
        ItemAside{
            height: contentSys.height*0.6
            bg_color: "#1E1E1E"
            nameAside: "STATUS"
            anchors.left: idContent.right
            anchors.leftMargin: 10
            anchors.right: contentSys.right
        }
    }
}
