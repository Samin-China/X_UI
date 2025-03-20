

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import MultiScreenTest 1.0
import QtQuick.Layouts

Rectangle {
    id: root
    width: Constants.width
    height: Constants.height

    RowLayout {
        anchors.fill: parent
        anchors.leftMargin: 4
        anchors.rightMargin: 4
        anchors.topMargin: 4
        anchors.bottomMargin: 4
        spacing: 1
        Rectangle {
            id: rectangle
            color: "#ffffff"
            border.width: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 192
            Layout.preferredHeight: 1564

            ColumnLayout {
                anchors.fill: parent
                Text {
                    id: directoryList
                    text: qsTr("Directory List")
                    font.pixelSize: 41
                    verticalAlignment: Text.AlignVCenter
                    font.weight: Font.Black
                    font.bold: true
                    Layout.preferredWidth: 492
                    Layout.preferredHeight: 93
                    Layout.fillWidth: false
                    Layout.fillHeight: false
                }

                Rectangle {
                    id: directories
                    color: "#f8f8f8"
                    border.color: "#cbcccd"
                    border.width: 2
                    Text {
                        id: _text
                        text: qsTr("Directories")
                        anchors.fill: parent
                        anchors.leftMargin: 4
                        anchors.rightMargin: 8
                        font.pixelSize: 42
                        verticalAlignment: Text.AlignVCenter
                    }
                    Layout.preferredHeight: 101
                    Layout.fillWidth: true
                    Layout.fillHeight: false
                }

                ProjectList {
                    id: projectList
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                }
            }
        }

        Rectangle {
            id: rectangle1
            color: "#ffffff"
            border.width: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 396
            Layout.preferredHeight: 1564

            Rectangle {
                id: rectangle3
                x: 0
                y: 0
                width: 1015
                height: 60
                color: "#ffffff"
                radius: 0
                border.width: 5

                RowLayout {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 4
                    spacing: 0
                    Rectangle {
                        id: uploadRec
                        color: "#4465e5"
                        Image {
                            id: upload
                            anchors.fill: parent
                            source: "images/upload.svg"
                            fillMode: Image.PreserveAspectFit
                        }
                        Layout.preferredWidth: 50
                        Layout.preferredHeight: 50
                    }

                    Rectangle {
                        id: deleteRec
                        color: "#da5566"
                        Image {
                            id: upload1
                            anchors.fill: parent
                            source: "images/delete.svg"
                            fillMode: Image.PreserveAspectFit
                        }
                        Layout.preferredWidth: 50
                        Layout.preferredHeight: 50
                    }

                    Rectangle {
                        id: clearRec
                        color: "#ffffff"
                        Image {
                            id: upload2
                            anchors.fill: parent
                            source: "images/package.svg"
                            fillMode: Image.PreserveAspectFit
                        }
                        Layout.preferredWidth: 50
                        Layout.preferredHeight: 50
                    }
                }

                RowLayout {
                    x: 602
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    anchors.rightMargin: 4
                    spacing: 0
                    TextField {
                        placeholderTextColor: "#88353637"
                        placeholderText: qsTr("input search text")
                        Layout.preferredWidth: 288
                        Layout.preferredHeight: 50
                    }

                    Rectangle {
                        id: searchRec
                        color: "#ffffff"
                        Image {
                            id: upload3
                            opacity: 0.3
                            anchors.fill: parent
                            source: "images/search (2).svg"
                            fillMode: Image.PreserveAspectFit
                        }
                        Layout.preferredWidth: 50
                        Layout.preferredHeight: 50
                    }

                    Rectangle {
                        id: rotateRec
                        color: "#ffffff"
                        Image {
                            id: upload4
                            anchors.fill: parent
                            anchors.leftMargin: -7
                            anchors.rightMargin: 7
                            anchors.topMargin: 0
                            anchors.bottomMargin: 0
                            source: "images/rotate (2).svg"
                            fillMode: Image.PreserveAspectFit
                        }
                        Layout.preferredWidth: 50
                        Layout.preferredHeight: 50
                    }
                }
            }
        }

        Rectangle {
            id: rectangle2
            color: "#ffffff"
            border.width: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 406
            Layout.preferredHeight: 1564
        }
    }
}
