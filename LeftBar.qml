import QtQuick 2.12

Rectangle {
    id: root
    anchors {
        left: parent.left
        top: parent.top
        bottom: bottomBar.top
    }
    width: parent.width * 1/3

    Image {
        id: myCar
        source: "qrc:/assets/myCar.jpg"
        anchors.centerIn: parent
        width: parent.width * .85
        fillMode: Image.PreserveAspectFit
    }
}
