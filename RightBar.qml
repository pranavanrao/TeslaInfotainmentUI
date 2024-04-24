import QtQuick 2.12
import QtQuick.Window 2.14
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

    Image {
        id: lockIcon
        source: "qrc:/assets/lock.png"
        anchors {
            left: parent.left
            top: parent.top
            margins: 20
        }
        width: parent.width / 40
        fillMode: Image.PreserveAspectFit
    }
}
