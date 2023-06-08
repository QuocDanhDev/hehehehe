import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id:root
    property color bg_color
    property bool bg_radius: true
    Rectangle {
        id: system
        width: root.width
        height: root.height
        color: bg_color
        radius: bg_radius ? 10 : 0
    }

}
