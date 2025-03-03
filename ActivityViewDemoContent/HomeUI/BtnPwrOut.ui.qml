import QtQuick
import QtQuick.Controls
import QtQuick.Studio.Components 1.0
import QtQuick.Shapes 1.0

Rectangle {
    id: btnPwrOut
    width: 240
    height: 129
    color: "transparent"
    property alias txtOutletText: txtOutlet.text
    state: "property_1_Checked"

    Rectangle {
        id: btnOutbkgrd
        width: 240
        height: 129
        color: "#757575"
        radius: 8
        anchors.left: parent.left
        anchors.top: parent.top
    }

    Text {
        id: txtOutlet
        color: "#000000"
        text: qsTr("Outlets")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 20
        anchors.rightMargin: 60
        anchors.topMargin: 84
        anchors.bottomMargin: 11
        font.pixelSize: 26
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.weight: Font.Medium
        font.family: "Test Söhne"
    }

    SvgPathItem {
        id: vecOutletDark
        width: 55
        height: 55
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 20
        anchors.topMargin: 20
        strokeWidth: 1
        strokeStyle: 1
        strokeColor: "transparent"
        path: "M 27.499999999999996 54.99999999999999 C 12.311786142985024 54.99999999999999 0 42.68821385701497 0 27.499999999999996 C 0 12.311786142985024 12.311786142985024 0 27.499999999999996 0 C 42.68821385701497 0 54.99999999999999 12.311786142985024 54.99999999999999 27.499999999999996 C 54.99999999999999 42.68821385701497 42.68821385701497 54.99999999999999 27.499999999999996 54.99999999999999 Z M 27.499999999999996 49.5 C 33.33476670583089 49.5 38.93054246902466 47.18215589523315 43.056349182128905 43.056349182128905 C 47.18215589523315 38.93054246902466 49.5 33.33476670583089 49.5 27.499999999999996 C 49.5 21.665233294169106 47.18215589523315 16.069460328420003 43.056349182128905 11.943653615315755 C 38.93054246902466 7.817846902211508 33.33476670583089 5.5 27.499999999999996 5.5 C 21.665233294169106 5.5 16.069460328420003 7.817846902211508 11.943653615315755 11.943653615315755 C 7.817846902211508 16.069460328420003 5.5 21.665233294169106 5.5 27.499999999999996 C 5.5 33.33476670583089 7.817846902211508 38.93054246902466 11.943653615315755 43.056349182128905 C 16.069460328420003 47.18215589523315 21.665233294169106 49.5 27.499999999999996 49.5 Z M 33 22 L 38.5 22 L 38.5 33 L 33 33 L 33 22 Z M 16.5 22 L 22 22 L 22 33 L 16.5 33 L 16.5 22 Z"
        joinStyle: 0
        fillColor: "#000000"
        antialiasing: true
    }

    SvgPathItem {
        id: vecOutletLight
        width: 55
        height: 55
        visible: false
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 20
        anchors.topMargin: 20
        strokeWidth: 1
        strokeStyle: 1
        strokeColor: "transparent"
        path: "M 27.499999999999996 54.99999999999999 C 12.311786142985024 54.99999999999999 0 42.68821385701497 0 27.499999999999996 C 0 12.311786142985024 12.311786142985024 0 27.499999999999996 0 C 42.68821385701497 0 54.99999999999999 12.311786142985024 54.99999999999999 27.499999999999996 C 54.99999999999999 42.68821385701497 42.68821385701497 54.99999999999999 27.499999999999996 54.99999999999999 Z M 27.499999999999996 49.5 C 33.33476670583089 49.5 38.93054246902466 47.18215589523315 43.056349182128905 43.056349182128905 C 47.18215589523315 38.93054246902466 49.5 33.33476670583089 49.5 27.499999999999996 C 49.5 21.665233294169106 47.18215589523315 16.069460328420003 43.056349182128905 11.943653615315755 C 38.93054246902466 7.817846902211508 33.33476670583089 5.5 27.499999999999996 5.5 C 21.665233294169106 5.5 16.069460328420003 7.817846902211508 11.943653615315755 11.943653615315755 C 7.817846902211508 16.069460328420003 5.5 21.665233294169106 5.5 27.499999999999996 C 5.5 33.33476670583089 7.817846902211508 38.93054246902466 11.943653615315755 43.056349182128905 C 16.069460328420003 47.18215589523315 21.665233294169106 49.5 27.499999999999996 49.5 Z M 33 22 L 38.5 22 L 38.5 33 L 33 33 L 33 22 Z M 16.5 22 L 22 22 L 22 33 L 16.5 33 L 16.5 22 Z"
        joinStyle: 0
        fillColor: "#ffffff"
        antialiasing: true
    }
    states: [
        State {
            name: "property_1_Default"

            PropertyChanges {
                target: vecOutletLight
                visible: true
            }

            PropertyChanges {
                target: btnOutbkgrd
                color: "#c1c1c1"
            }

            PropertyChanges {
                target: vecOutletDark
                visible: false
            }
        },
        State {
            name: "property_1_Checked"

            PropertyChanges {
                target: vecOutletLight
                visible: false
            }

            PropertyChanges {
                target: btnOutbkgrd
                color: "#757575"
            }

            PropertyChanges {
                target: vecOutletDark
                visible: true
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;uuid:"0532be40-6071-52ca-92b7-ed5b549aa614"}D{i:1;uuid:"70fe9270-fd09-5326-9c37-79cf0aa7de84"}
D{i:2;uuid:"75520875-89da-5bbf-877b-985c0c78b741"}D{i:3;uuid:"3933056b-a3c2-5361-bc9e-2fc577739569"}
D{i:4;uuid:"64487079-aadf-57b8-9be6-bd0cd2e23529"}
}
##^##*/

