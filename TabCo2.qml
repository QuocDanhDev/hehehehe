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
                    m_lable: "CO2"
                    m_color: "#F8A966"
                    m_value: 1133
                    m_colorValue: "#ff9740"
                    anchors.left: parent.left
                    anchors.leftMargin: framedashboard.width*0.08
                    anchors.verticalCenter: parent.verticalCenter
                }
                Rectangle{
                    id: idNote
                    width: idContent.width*0.6
                    height: framedashboard.height
                    color: "#141414"
                    radius: 5
                    anchors.right: parent.right
                    anchors.rightMargin: framedashboard.width*0.05
                    anchors.top: framedashboard.top
                    anchors.topMargin: 10
                    anchors.bottom: framedashboard.bottom
                    anchors.bottomMargin: 10
                    Text {
                        id: noteTemp
                        text: qsTr("Tùy chỉnh nhiệt độ là tính năng quan trọng để điều chỉnh mức độ nhiệt độ theo ý muốn.")
                        font.pixelSize: idNote.width*0.03
                        color: "white"
                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                        width: idNote.width*0.3
                        anchors.left: idNote.left
                        anchors.leftMargin: idNote.width*0.05
                        anchors.verticalCenter: parent.verticalCenter
                    }
                    Rectangle{
                        id: valueXanh
                        width: idNote.width*0.25
                        height: idNote.height*0.6
                        radius: 3
                        color: "#6698F8"
                        anchors.right: valueTim.left
                        anchors.rightMargin: idNote.width*0.05
                        anchors.verticalCenter: parent.verticalCenter
                        Text {
                            text: "800"
                            font.pixelSize: valueXanh.width*0.2
                            font.bold: true
                            color: "white"
                            anchors.centerIn: parent
                        }
                    }
                    Rectangle{
                        id: valueTim
                        width: idNote.width*0.25
                        height: idNote.height*0.6
                        radius: 3
                        color: "#D74AEE"
                        anchors.right: idNote.right
                        anchors.rightMargin: idNote.width*0.05
                        anchors.verticalCenter: parent.verticalCenter
                        Text {
                            text: "1300"
                            font.pixelSize: valueTim.width*0.2
                            font.bold: true
                            color: "white"
                            anchors.centerIn: parent
                        }
                    }
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
