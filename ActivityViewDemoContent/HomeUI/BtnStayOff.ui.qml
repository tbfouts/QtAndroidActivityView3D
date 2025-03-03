import QtQuick
import QtQuick.Controls

Rectangle {
    id: btnStayOff
    width: 250
    height: 80
    color: "transparent"
    property alias txtStayOFFText: txtStayOFF.text
    state: "property_1_Checked"

    Rectangle {
        id: btnSOFFbkgrd
        width: 250
        height: 80
        color: "#757575"
        radius: 8
        anchors.left: parent.left
        anchors.top: parent.top
    }

    Text {
        id: txtStayOFF
        width: 184
        height: 21
        color: "#ffffff"
        text: qsTr("Stay off")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 33
        anchors.topMargin: 29
        font.pixelSize: 26
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.weight: Font.Medium
        font.family: "Test Söhne"
    }
    states: [
        State {
            name: "property_1_Default"

            PropertyChanges {
                target: txtStayOFF
                color: "#7c7c7c"
            }

            PropertyChanges {
                target: btnSOFFbkgrd
                color: "#c1c1c1"
            }
        },
        State {
            name: "property_1_Checked"

            PropertyChanges {
                target: txtStayOFF
                color: "#ffffff"
            }

            PropertyChanges {
                target: btnSOFFbkgrd
                color: "#757575"
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;uuid:"94807744-2ab6-5eb1-b2fa-475139266554"}D{i:1;uuid:"be5237b9-f0bb-5689-a5d3-cc02ecb60257"}
D{i:2;uuid:"d2b5aef5-82a7-5c18-a435-32ff5816ad4a"}
}
##^##*/

