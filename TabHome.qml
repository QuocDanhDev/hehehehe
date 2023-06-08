import QtQuick 2.15
import QtQuick.Controls 2.15
import "qrc:/Component/"
Rectangle{
    width: parent.width
    height: parent.height
    color: "#000000"

    Frame{
        id:leftNav
        width: parent.width*0.1
        height: parent.height
        background: Rectangle{
            color: "#1E1E1E"
        }
        Image {
            id: selectButton
            width: parent.width*0.5
            height:width
            source: "qrc:/Icon/home.svg"
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
    Frame{
        id: topNav
        width: parent.width*0.9-anchors.leftMargin
        height: parent.height*0.08
        anchors.left: leftNav.right
        anchors.leftMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 10

        background: Rectangle{
            color: "#1E1E1E"
            radius: 5
        }
    }
    Frame{
        id:content
        width:topNav.width-parent.width*0.3
        height: parent.height
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.left: topNav.left
        anchors.top: topNav.bottom
        anchors.topMargin: 10
        background: Rectangle{
            color: "#1E1E1E"
            radius: 5
        }
        Frame{
            id:frameDashboard
            anchors.horizontalCenter: parent.horizontalCenter
            Row{
                spacing: 15

                ItemValue{
                    id:idTemp
                    width: 60
                    height: 80
                    m_lable: "Temp"
                    m_value: 10.2
                }
                ItemValue{
                    id:idHumi
                    width: 60
                    height: 80
                    m_lable: "Humi"
                    m_value: 10.2
                }
                ItemValue{
                    id:idCo2
                    width: 60
                    height: 80
                    m_lable: "CO2"
                    m_value: 10.2
                }
                ItemValue{
                    id:idVD
                    width: 60
                    height: 80
                    m_lable: "VD"
                    m_value: 10.2
                    m_color: "blue"
                    m_colorValue: "green"

                }
            }

        }
    }
    Frame{
        id:rightBar
        width: topNav.width-content.width-10
        height: parent.height*0.5
        anchors.top: content.top
        anchors.right: topNav.right
        background: Rectangle{
            color: "#1E1E1E"
            radius: 5
        }
        Button{
            width: 50
            height: 100
            onClicked: {

            }
        }
    }

}
