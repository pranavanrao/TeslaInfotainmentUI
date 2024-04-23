import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 1280
    height: 720
    visible: true
    title: qsTr("Tesla Infotainment")

    RightBar {
        id: rightBar
    }

    LeftBar {
        id: leftBar
    }

    BottomBar {
        id: bottomBar
    }
}
