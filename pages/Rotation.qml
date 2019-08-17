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
import QtSensors 5.0
import QtQuick.Controls 2.5

Page {
    id: rotationPage
    header: Label {
        text: qsTr("QML Rotation")
    }

    RotationSensor {
        id: rotation
        dataRate: dataRateSlider.value
    }

    Component.onCompleted: {
     if (!rotation.connectedToBackend) {
         label.text = "Rotation sensor not connected to backend"
     }
    }

    Flickable {
        anchors.fill: parent

        contentHeight: column.height

        Column {
            id: column

            width: rotationPage.width
   //         spacing: Theme.paddingLarge
//
            Label {
                id: label
     //           x: Theme.paddingLarge
                text: "X: "+rotation.reading.x+"\nY: "+ rotation.reading.y +"\nZ: " + rotation.reading.z
     //           color: Theme.secondaryHighlightColor
     //           font.pixelSize: Theme.fontSizeExtraLarge
            }
            Button {
                id: button
                text: rotation.active ? "Stop" : "start"
                onClicked: {
                    rotation.active = !rotation.active
                }
            }
            Row {
                Slider {
                    id: dataRateSlider
                    from: 0
                    to: 200
                    stepSize: 5
                  }
                Label {
                    text: "Data Rate: " + dataRateSlider.value +" Hz"
                }
            }

        }
    }
    Component.onDestruction: console.log("rotation destroyed")
}


