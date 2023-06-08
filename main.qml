import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import "qrc:/TabView"
Window {
    //    property int m_heigh: 480
    //    property int  : value
    id:idWindows
    width: 800
    height: 480
    visible: true
    title: qsTr("Phần mềm giám sát vườn")
    TabHome{
        visible: false
    }
    TabTemp {
        visible: false
    }
    TabHumi {
        visible: false
    }
    TabCo2 {
        visible: false
    }
    TabSetting{
        visible: true
    }
}
