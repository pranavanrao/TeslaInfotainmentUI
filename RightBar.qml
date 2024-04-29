import QtQuick 2.12
import QtQuick.Window 2.12
import QtLocation 5.12
import QtPositioning 5.12

Rectangle {
    id: root
    anchors {
        top: parent.top
        right: parent.right
        bottom: bottomBar.top
    }
    color: "orange"
    width: parent.width * 2/3

    Plugin {
        id: mapPlugin
        name: "osm"
    }

    Map {
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(12.97, 77.59) // Bengaluru
        zoomLevel: 14
    }

    property url iconLock: "qrc:/assets/lock.png"
    property url iconUnlock: "qrc:/assets/unlock.png"

    Image {
        id: lockIcon
        source: (system.carLocked ? iconLock : iconUnlock)
        anchors {
            left: parent.left
            top: parent.top
            margins: 20
        }
        width: parent.width / 40
        fillMode: Image.PreserveAspectFit

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (lockIcon.source == iconLock) {
                    lockIcon.source = iconUnlock
                } else {
                    lockIcon.source = iconLock
                }
            }
        }
    }

    Text {
        id: userName
        text: system.userName
        anchors {
            left: lockIcon.right
            top: parent.top
            margins: 20
        }
        font.pointSize: 10
    }

    Image {
        id: temperatureIcon
        source: "qrc:/assets/thermometer.png"
        width: parent.width / 30
        fillMode: Image.PreserveAspectFit

        anchors {
            left: userName.right
            top: parent.top
            margins: 20
        }
    }

    Text {
        id: tempText
        text: system.carTemp
        font.pointSize: 10

        anchors {
            left: temperatureIcon.right
            top: parent.top
            topMargin: 20
        }
    }
}
