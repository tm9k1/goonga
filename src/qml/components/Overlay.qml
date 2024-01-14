import QtQuick 2.0
import QtQuick.Window 2.15
import QtQuick.Controls 1.1

Item {
    id: noMediaOverlay
    anchors.fill: parent
    Rectangle {
        id: noMediaOverlayRectangle
        anchors.fill: parent
        opacity: 0.5
        color: "black"
    }
    Text {
        id: noMediaOverlayRectangleText
        anchors.centerIn: parent
        color: "white"
        text: qsTr("Nothing's playing right now")
    }
}
