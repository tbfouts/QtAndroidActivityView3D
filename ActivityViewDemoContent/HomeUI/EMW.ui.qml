import QtQuick
import QtQuick.Controls

Rectangle {
    id: eMW
    width: 568
    height: 228
    color: "transparent"
    property alias txtEnergyMgmtText: txtEnergyMgmt.text

    Rectangle {
        id: bkgrdEnergy
        width: 568
        height: 228
        opacity: 0.5
        color: "#fca0a0a0"
        radius: 20
        anchors.left: parent.left
        anchors.top: parent.top
    }

    Text {
        id: txtEnergyMgmt
        width: 304
        height: 46
        color: "#000000"
        text: qsTr("Energy Management ")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 39
        anchors.topMargin: 31
        font.pixelSize: 30
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.weight: Font.Medium
        font.family: "Test Söhne"
    }

    BtnStayOn {
        id: btnStayOn
        width: 240
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 39
        anchors.topMargin: 108
        state: "property_1_Checked"
    }

    BtnStayOff {
        id: btnStayOff
        width: 250
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 279
        anchors.topMargin: 107
        state: "property_1_Default"
    }
}

/*##^##
Designer {
    D{i:0;uuid:"84a8899d-111f-5533-973d-2b9f1abcad8c"}D{i:1;uuid:"4d31130c-95b0-5b53-a3e4-f5c5c779f0a1"}
D{i:2;uuid:"59e72563-2971-504e-a4b2-1895e27952dc"}D{i:3;uuid:"c436a3a8-d781-5e94-b95f-288259ac6afa"}
D{i:4;uuid:"1a82a4c3-fb4b-5d82-95f3-b0c7df7f0ead"}
}
##^##*/

