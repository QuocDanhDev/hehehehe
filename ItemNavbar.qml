import QtQuick 2.15
import QtQuick.Controls 2.15
import "qrc:/Component/"
import "qrc:/Icon/"

Item {
    property color bg_color: "#1E1E1E"
    property bool bg_radius: true
    property string name: user
    property color name_color: "white"
    property var currentTime: new Date()
    property string timeString: {
        var hours = currentTime.getHours();
        var minutes = currentTime.getMinutes();
        var period = hours >= 12 ? "PM" : "AM";

        if (hours > 12) {
            hours -= 12;
        } else if (hours === 0) {
            hours = 12;
        }

        return hours + ":" + (minutes < 10 ? "0" : "") + minutes + " " + period;
    }

    id: root
    Rectangle {
        id: system
        width: root.width
        height: root.height
        color: bg_color
        radius: bg_radius ? 10 : 0
    }
    Frame {
        id: user
        anchors.verticalCenter: system.verticalCenter
        height: system.height
        width: system.width*0.2
        background: Rectangle {
            color: "#1E1E1E"
            radius: 10
        }

        Image {
            id: user_logo
            source: "../Icon/user-circle.svg"
            width: user.height*0.5
            height: width
            anchors.left: user.left
            anchors.leftMargin: user.width*0.1
            anchors.verticalCenter: parent.verticalCenter
        }
        Text {
            id: nameUser
            text: qsTr("Hello, ") + qsTr(name)
            font.pixelSize: user_logo.width*0.6
            color: name_color
            anchors.left: user_logo.right
            anchors.leftMargin: user.width*0.08
            anchors.verticalCenter: parent.verticalCenter
        }
    }
    Frame {
        id: notification
        anchors.verticalCenter: system.verticalCenter
        anchors.right: system.right
        height: system.height
        width: system.width*0.18
        background: Rectangle {
            color: "#1E1E1E"
            radius: 10
        }
        Image {
            id: wifi_logo
            source: "../Icon/wifi.svg"
            width: notification.height*0.5
            height: width
            anchors.left: notification.left
            anchors.leftMargin: notification.width*0.3
            anchors.verticalCenter: parent.verticalCenter
        }
        Text {
            id: time
            text: timeString
            font.pixelSize: wifi_logo.width*0.6
            color: name_color
            anchors.left: wifi_logo.right
            anchors.leftMargin: wifi_logo.width*0.5
            anchors.verticalCenter: parent.verticalCenter
        }
    }
}
