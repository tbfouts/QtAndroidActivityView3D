import QtQuick
import QtQuick.Controls

Rectangle {
    id: homeUI
    width: 1920
    height: 1080
    color: "transparent"

    EMW {
        id: eMW
        width: 568
        height: 228
        opacity: 1
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 30
        anchors.topMargin: 725
        clip: true
    }

    OLW {
        id: oLW
        width: 568
        height: 584
        opacity: 1
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 30
        anchors.topMargin: 124
        //txtCampCourtText: "Night Mode"
        clip: true
    }

    BottomBar {
        id: bottomBar
        y: 1000
        width: 2000
        height: 80
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        clip: true
    }

    TopBar {
        id: topBar
        width: 2000
        height: 80
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        clip: true
    }
}
