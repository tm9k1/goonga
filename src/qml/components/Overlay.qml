import QtQuick 2.0
import QtQuick.Window 2.15
import QtQuick.Controls 1.1


Item {
    property alias text: overlayRectangleText.text

    id: root

    Rectangle {
        id: overlayRectangle
        anchors.fill: parent
        anchors.margins: 20
        anchors.topMargin: 100
        anchors.bottomMargin: 100
        opacity: 0.5
        color: "black"
    }
    Text {
        id: overlayRectangleText
        anchors.centerIn: parent
        color: "white"
        text: qsTr("")
    }
}
