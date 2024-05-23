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
    width: parent.width * 2/3

    property url iconLock: "qrc:/assets/lock.png"
    property url iconUnlock: "qrc:/assets/unlock.png"

    Plugin {
        id: mapPlugin
        name: "osm"
    }

    Map {
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(16.20, 77.37) // Raichur
        zoomLevel: 14
    }

    Rectangle {
        width: 300
        height: 60
        radius: 10
        color: "#FFFFFF"
        opacity: 0.6

        border.color: "#EAECEE"
        border.width: 5

        anchors {
            top: root.top
            left: root.left
            margins: 10
        }

        Image {
            id: lockIcon
            source: (system.carLocked ? iconLock : root.iconUnlock)
            anchors {
                left: parent.left
                top: parent.top
                margins: 20
            }
            width: parent.width * 0.08
            fillMode: Image.PreserveAspectFit

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if (lockIcon.source == root.iconLock) {
                        lockIcon.source = root.iconUnlock
                    } else {
                        lockIcon.source = root.iconLock
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
            width: parent.width * 0.1
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
}
