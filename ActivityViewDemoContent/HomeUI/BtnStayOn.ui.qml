import QtQuick
import QtQuick.Controls

Rectangle {
    id: btnStayOn
    width: 240
    height: 80
    color: "transparent"
    property alias txtStayOnText: txtStayOn.text
    state: "property_1_Checked"

    Rectangle {
        id: btnSObkgrd
        width: 240
        height: 80
        color: "#757575"
        radius: 8
        anchors.left: parent.left
        anchors.top: parent.top
    }

    Text {
        id: txtStayOn
        width: 184
        height: 21
        color: "#ffffff"
        text: qsTr("Stay on")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 28
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
                target: btnSObkgrd
                color: "#c1c1c1"
            }

            PropertyChanges {
                target: txtStayOn
                color: "#7c7c7c"
                anchors.leftMargin: 40
                anchors.rightMargin: 40
                anchors.bottomMargin: 30
            }

            AnchorChanges {
                target: txtStayOn
                anchors.verticalCenter: undefined
                anchors.left: undefined
                anchors.right: parent.right
                anchors.top: undefined
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: undefined
                anchors.baseline: undefined
            }
        },
        State {
            name: "property_1_Checked"

            PropertyChanges {
                target: btnSObkgrd
                color: "#757575"
            }

            AnchorChanges {
                target: txtStayOn
                anchors.verticalCenter: undefined
                anchors.left: undefined
                anchors.right: undefined
                anchors.top: undefined
                anchors.bottom: undefined
                anchors.horizontalCenter: undefined
                anchors.baseline: undefined
            }

            PropertyChanges {
                target: txtStayOn
                color: "#ffffff"
                anchors.leftMargin: 28
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;uuid:"91c9e439-492d-5e11-82f7-6d5fc0bdcf04"}D{i:1;uuid:"8ee5e86b-31fc-5a54-a188-07938ef7dd7b"}
D{i:2;uuid:"b61ff8e7-9c44-5467-98ff-4bd347c7eef0"}
}
##^##*/

