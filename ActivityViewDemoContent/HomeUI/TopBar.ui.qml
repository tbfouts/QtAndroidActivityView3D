import QtQuick
import QtQuick.Controls

Rectangle {
    id: topBar
    width: 1920
    height: 80
    color: "transparent"

    Rectangle {
        id: bkgrdTopBar
        width: 2000
        height: 80
        color: "#000000"
        anchors.left: parent.left
        anchors.top: parent.top
    }

    TopBarLeft {
        id: topBarLeft
        width: 701
        height: 40
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 69
        anchors.topMargin: 20
    }

    TopBarRight {
        id: topBarRight
        width: 494
        height: 35
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 1318
        anchors.topMargin: 22
    }
}

/*##^##
Designer {
    D{i:0;uuid:"ac538a77-1875-5955-b7a8-d1cc8ba85d6a"}D{i:1;uuid:"9fdfce34-ace0-5fb9-9fc8-ad55adf9812f"}
D{i:2;uuid:"ece09745-1d16-5903-abe0-fe74f04dc0e4"}D{i:3;uuid:"40ca57c6-f963-5803-b5f9-4d3354a5bc39"}
}
##^##*/

