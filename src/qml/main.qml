import QtQuick 2.15
import QtQuick.Window 2.15

Image {
    id: albumArtImage
    fillMode: Image.PreserveAspectFit
    anchors.centerIn: parent
    source: "image://provider/lol";
}

