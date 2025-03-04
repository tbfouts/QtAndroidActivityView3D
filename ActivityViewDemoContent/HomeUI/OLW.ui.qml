import QtQuick
import QtQuick.Controls

Rectangle {
    id: oLW
    width: 568
    height: 584
    color: "transparent"
    property alias onRoadText: onRoad.text

    Rectangle {
        id: driveModeWidget
        width: 568
        height: 584
        opacity: .5
        color: "#fca0a0a0"
        radius: 20
        anchors.left: parent.left
        anchors.top: parent.top
    }

    Text {
        id: onRoad
        width: 225
        height: 46
        color: "#000000"
        text: qsTr("Overlanding")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 39
        anchors.topMargin: 31
        font.pixelSize: 40
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.weight: Font.Medium
        font.family: "Test Söhne"
    }

    BtnCampCourt {
        id: btnCampCourt
        width: 240
        height: 129
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 34
        anchors.topMargin: 115
        state: "property_1_Default"
    }

    BtnDisplayOff {
        id: btnDisplayOff
        width: 240
        height: 129
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 34
        anchors.topMargin: 262
        state: "property_1_Default"
    }

    BtnPwrOut {
        id: btnPwrOut
        width: 240
        height: 129
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 291
        anchors.topMargin: 262
        state: "property_1_Default"
    }

    BtnExtLights {
        id: btnExtLights
        width: 240
        height: 129
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 291
        anchors.topMargin: 115
        state: "property_1_Default"
    }

    BtnSuspension {
        id: btnSuspension
        width: 497
        height: 129
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 34
        anchors.topMargin: 409
        state: "property_1_Default"
    }
}

/*##^##
Designer {
    D{i:0;uuid:"11a70a82-5f51-54af-88b1-605d290c9ea5"}D{i:1;uuid:"bc7b0c70-7356-5722-bcbc-a9e32975173d"}
D{i:2;uuid:"36be5267-7276-5f13-985d-68d63eaca3bf"}D{i:3;uuid:"67fe4b92-cf91-5ce7-bf4d-4a611b881c98"}
D{i:4;uuid:"70118e2a-ba85-5679-bde6-4c940c4ff43f"}D{i:5;uuid:"0f3bedf0-1143-56de-ba18-5b3d11d4a776"}
D{i:6;uuid:"73aa02a6-820c-5c53-adf3-8c905bdc4528"}D{i:7;uuid:"1fe07bd3-7ae9-5599-9b4b-adc012f8795a"}
}
##^##*/

