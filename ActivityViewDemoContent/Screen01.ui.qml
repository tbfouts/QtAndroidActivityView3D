

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import ActivityViewDemo
import "HomeUI"

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height

    // transparency enabled so background 3D content can be seen/interacted with
    color: "transparent"

    HomeUI {
        id: homeUI
    }
}

/*##^##
Designer {
    D{i:0}D{i:1;invisible:true}
}
##^##*/

