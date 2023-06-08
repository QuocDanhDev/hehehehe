import QtQuick 2.15
import QtQuick.Controls 2.15
import "qrc:/Component/"
import "qrc:/Icon/"

Item {
    property color bg_color: "#1E1E1E"

    id: root
    Rectangle {
        width: root.width
        height: idWindows.height
        color: bg_color
    }
}
