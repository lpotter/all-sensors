import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Stack")

    header: ToolBar {
        contentHeight: toolButton.implicitHeight

        ToolButton {
            id: toolButton
            text: stackView.depth > 1 ? "\u25C0" : "\u2630"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                } else {
                    drawer.open()
                }
            }
        }

        Label {
            text: qtversion
            anchors.centerIn: parent
        }
    }

    Drawer {
        id: drawer
        width: window.width * 0.66
        height: window.height

        Column {
            anchors.fill: parent

            ItemDelegate {
                text: qsTr("Accelerometer")
                width: parent.width
                onClicked: {
                    stackView.push("pages/Accelerometer.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Compass")
                width: parent.width
                onClicked: {
                    stackView.push("pages/Compass.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Gyroscope")
                width: parent.width
                onClicked: {
                    stackView.push("pages/Gyroscope.qml")
                    drawer.close()
                }
            }

            ItemDelegate {
                text: qsTr("Light")
                width: parent.width
                onClicked: {
                    stackView.push("pages/Light.qml")
                    drawer.close()
                }
            }

            ItemDelegate {
                text: qsTr("Magnetometer")
                width: parent.width
                onClicked: {
                    stackView.push("pages/Magnetometer.qml")
                    drawer.close()
                }
            }

            ItemDelegate {
                text: qsTr("Rotation")
                width: parent.width
                onClicked: {
                    stackView.push("pages/Rotation.qml")
                    drawer.close()
                }
            }

            ItemDelegate {
                text: qsTr("Orientation")
                width: parent.width
                onClicked: {
                    stackView.push("pages/Orientation.qml")
                    drawer.close()
                }
            }

            ItemDelegate {
                text: qsTr("Proximity")
                width: parent.width
                onClicked: {
                    stackView.push("pages/Proximity.qml")
                    drawer.close()
                }
            }

            ItemDelegate {
                text: qsTr("Tilt")
                width: parent.width
                onClicked: {
                    stackView.push("pages/Tilt.qml")
                    drawer.close()
                }
            }

        }
    }

    StackView {
        id: stackView
        initialItem: "pages/FirstPage.qml"
        anchors.fill: parent
    }
}
