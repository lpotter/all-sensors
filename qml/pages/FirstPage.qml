/*
  Copyright (C) 2013-2015 Jolla Ltd.
  Contact: Lorn Potter <lorn.potter@jollamobile.com>
  All rights reserved.

  You may use this file under the terms of BSD license as follows:

  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the Jolla Ltd nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR CONTRIBUTORS BE LIABLE FOR
  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

import QtQuick 2.0
import Sailfish.Silica 1.0
import QtSensors 5.0


Page {
    id: page

    SilicaFlickable {
        anchors.fill: parent

        //        PullDownMenu {
        //            MenuItem {
        //                text: qsTr("Show Page 2")
        //                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
        //            }
        //        }
        Component.onCompleted: {
            var types = QmlSensors.sensorTypes();
            console.log("<<<<<<<<<<<<<<<<<<<<< sensor types")
            console.log(types.join(", "));
        }

        contentHeight: column.height

        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("All Sensors")
            }
            Row {
                Button {
                    id: buttonAccel
                    text: "Accelerometer"
                    onClicked: {
                        pageStack.push(Qt.createComponent("Accelerometer.qml"))
                    }
                }
                Label {
                    x: Theme.paddingLarge
                    text: ""
                    color: Theme.secondaryHighlightColor
                    font.pixelSize: Theme.fontSizeExtraLarge
                }

            }
            Row {
                Button {
                    id: buttonCompass
                    text: "Compass"
                    onClicked: {
                        pageStack.push(Qt.createComponent("Compass.qml"))
                    }
                }
                Label {
                    x: Theme.paddingLarge
                    text: ""
                    color: Theme.secondaryHighlightColor
                    font.pixelSize: Theme.fontSizeExtraLarge
                }

            }
            Row {
                Button {
                    id: buttonGyro
                    text: "Gyroscope"
                    onClicked: {
                        pageStack.push(Qt.createComponent("Gyroscope.qml"))
                    }
                }
                Label {
                    x: Theme.paddingLarge
                    text: ""
                    color: Theme.secondaryHighlightColor
                    font.pixelSize: Theme.fontSizeExtraLarge
                }

            }
            Row {
                Button {
                    id: buttonLight
                    text: "Light"
                    onClicked: {
                        pageStack.push(Qt.createComponent("Light.qml"))
                    }
                }
                Label {
                    x: Theme.paddingLarge
                    text: ""
                    color: Theme.secondaryHighlightColor
                    font.pixelSize: Theme.fontSizeExtraLarge
                }

            }
            Row {
                Button {
                    id: buttonMag
                    text: "Magnetometer"
                    onClicked: {
                        pageStack.push(Qt.createComponent("Magnetometer.qml"))
                    }
                }
                Label {
                    x: Theme.paddingLarge
                    text: ""
                    color: Theme.secondaryHighlightColor
                    font.pixelSize: Theme.fontSizeExtraLarge
                }

            }
            Row {
                Button {
                    id: buttonRot
                    text: "Rotation"
                    onClicked: {
                        pageStack.push(Qt.createComponent("Rotation.qml"))
                    }
                }
                Label {
                    x: Theme.paddingLarge
                    text: ""
                    color: Theme.secondaryHighlightColor
                    font.pixelSize: Theme.fontSizeExtraLarge
                }

            }
            Row {
                Button {
                    id: buttonOrient
                    text: "Orientation"
                    onClicked: {
                        pageStack.push(Qt.createComponent("Orientation.qml"))
                    }
                }
                Label {
                    x: Theme.paddingLarge
                    text: ""
                    color: Theme.secondaryHighlightColor
                    font.pixelSize: Theme.fontSizeExtraLarge
                }

            }
            Row {
                Button {
                    id: buttonProxy
                    text: "Proximity"
                    onClicked: {
                        pageStack.push(Qt.createComponent("Proximity.qml"))
                    }
                }
            }
            Label {
                x: Theme.paddingLarge
                text: ""
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }
            Row {
                Button {
                    id: buttonTilt
                    text: "Tilt"
                    onClicked: {
                        pageStack.push(Qt.createComponent("Tilt.qml"))
                    }
                }
            }
            Label {
                x: Theme.paddingLarge
                text: ""
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

        }
    }
}


