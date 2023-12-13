import QtQuick 2.0
import QtMultimedia 5.15
import QtQuick.Window 2.15

Item {
    id: root
    Window {
        height: 100
        width: 100
        title: "Queue"
        Rectangle {
             anchors.fill: parent
             color: "black"
        }
    }
    MediaPlayer {
        id: player
        playlist: Playlist {
            id: playerPlaylist
            onItemInserted: {
                if (playerPlaylist.currentIndex == -1) {
                    playerPlaylist.next();
                    console.log(playerPlaylist.currentIndex);
                    console.log(playerPlaylist.currentItemSource);
                }
                player.play();
            }
        }
    }

    Image {
        id: albumArtImage
        fillMode: Image.PreserveAspectFit
        anchors.centerIn: parent
        source: "image://provider/lol";
    }

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

    MouseArea {
        id: rootArea
        anchors.fill: parent
        DropArea {
            id: songDropArea
            anchors.fill: parent
            keys: [ "text/uri-list","text/plain","application/x-kde4-urilist" ]
            onDropped: {
                if(drop.hasUrls) {
                    console.log("dropped stuff");
                    console.log(drop.urls);
                    if(playerPlaylist.addItems(drop.urls)) {
                        console.log("added items to playlist.");
                    } else
                        console.log("could not add items to playlist");
                }
            }
        }
    }
    //    onReleased: {
    //        console.log("released a clickpress");
    //    }

}
