// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick
import QtQuick.Controls
import ActivityViewDemo
import QtAndroidAutomotive.ActivityView
import QtAndroidAutomotive.Base

Window {
    visible: true
    width: 1920
    height: 1080
    title: "ActivityViewDemo"
    visibility:  Window.FullScreen

    ActivityView {
        id: activityView

        // package name of APK for 3D scene
        packageName: "com.qt.MoonLander"
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

    // Add a new AndroidBroadcastReceiver for Unity splash complete
    AndroidBroadcastReceiver {
        id: unitySplashReceiver
        AndroidIntentFilter {
            actions: [
                "com.qt.UNITY_SPLASH_COMPLETE"  // The action we defined in Unity
            ]
            // No need for dataAuthorities, dataPaths, or dataSchemes for this broadcast
        }

        onReceived: function(intent) {
            // Check for and log the timestamp extra if it exists
            if (intent.extras.hasOwnProperty("timestamp")) {
                console.log("Unity splash completed at:", intent.extras.timestamp)
            }

            mainScreen.splashScreenComplete = true

            // Set a property or call a function to update your UI
            // root.unitySplashCompleted = true
            // handleUnitySplashComplete()
        }
    }
}

