import QtQuick
import QtQuick.Controls

Rectangle {
    id: bottomBar
    width: 2000
    height: 80
    color: "#000000"

    // Rectangle {
    //     id: bkgrdBtBar
    //     width: 2000
    //     height: 80
    //     color: "#000000"
    //     anchors.horizontalCenter: parent.horizontalCenter
    //     anchors.top: parent.top
    // }
    CtrlDRVER {
        id: ctrlDRVER
        width: 572
        height: 36
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 70
        anchors.topMargin: 22
    }

    DomBar {
        id: domBar
        width: 330
        height: 38
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 795
        anchors.topMargin: 20
    }

    CtrlFan {
        id: ctrlFan
        width: 257
        height: 30
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 1675
        anchors.topMargin: 28
    }

    CtrlPsgr {
        id: ctrlPsgr
        width: 129
        height: 30
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 1415
        anchors.topMargin: 25
    }
}

/*##^##
Designer {
    D{i:0;uuid:"d18bbc7f-3b7d-5b89-a3a2-7a6e62beb109"}
}
##^##*/

