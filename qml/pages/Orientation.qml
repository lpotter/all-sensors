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
    id: orientationPage

    OrientationSensor {
        id: orientationSensor
    }

    function showOrientation(orient) {
        switch (orient) {
          case OrientationReading.TopUp:
              return "Top Up"
              break;
          case OrientationReading.TopDown:
              return "Top Down"
              break;
          case OrientationReading.LeftUp:
              return "Left Up"
              break;
          case OrientationReading.RightUp:
              return "Right Up"
              break;
          case OrientationReading.FaceUp:
              return "Face Up"
              break;
          case OrientationReading.FaceDown:
              return "Face Down"
              break;
        };
        return ""
    }
    Component.onCompleted: {
     if (!orientationSensor.connectedToBackend) {
         label.text = "Orientation sensor not connected to backend"
     }
    }

    SilicaFlickable {
        anchors.fill: parent

        contentHeight: column.height

        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Device Orientation")
            }
            Label {
                id: label
                x: Theme.paddingLarge
                text: showOrientation(orientationSensor.reading.orientation)
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }
            Button {
                id: button
                text: orientationSensor.active ? "Stop" : "start"
                onClicked: {
                    orientationSensor.active = !orientationSensor.active
                }
            }
        }
    }
}


