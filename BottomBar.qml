import QtQuick 2.12

Rectangle {
    id: root
    color: "black"
    anchors {
        left: parent.left
        right: parent.right
        bottom: parent.bottom
    }
    height: parent.height / 12

    Image {
        id: carIcon
        source: "qrc:/assets/carIcon.png"
        anchors {
            left: parent.left
            leftMargin: 30
            verticalCenter: parent.verticalCenter
        }

        height: parent.height * .85
        fillMode: Image.PreserveAspectFit
    }
}
