// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick
import QtQuick.Controls
import ActivityViewDemo
import QtAndroidAutomotive.ActivityView

Window {
    visible: true
    width: 1920
    height: 1080
    title: "ActivityViewDemo"
    visibility:  Window.FullScreen

    ActivityView {
        id: activityView

        // package name of APK for 3D scene
        packageName: "com.UnityTechnologies.MoonLander"
        anchors.fill: parent

        // entry point for 2D Figma UI from Design Studio
        Screen01 {
            id: mainScreen
            anchors.centerIn: parent

                // add scaling to support various screen sizes
                transform: Scale {
                    origin.x: mainScreen.width / 2
                    origin.y: mainScreen.height / 2
                    readonly property real xRatio: activityView.width / mainScreen.width
                    readonly property real yRatio: activityView.height / mainScreen.height
                    xScale: Math.min(xRatio, yRatio)
                    yScale: Math.min(xRatio, yRatio)
                }
            }
    }
}

