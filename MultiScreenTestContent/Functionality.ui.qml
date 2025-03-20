

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

    Rectangle {
        id: rectangle1
        x: 242
        y: 236
        width: 403
        height: 817
        color: "#ffffff"
        border.width: 0

        ColumnLayout {
            x: 26
            y: 0
            Text {
                id: dataSync
                text: qsTr("Data Sync")
                font.pixelSize: 43
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                Layout.preferredWidth: 352
                Layout.preferredHeight: 149
            }

            Rectangle {
                id: model
                color: "#ffffff"
                Layout.fillWidth: true
                RowLayout {
                    anchors.fill: parent
                    spacing: 12
                    Image {
                        id: edit_document
                        source: "images/edit_document.svg"
                        Layout.fillWidth: false
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 49
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Text {
                        id: _text1
                        text: qsTr("CAD Model")
                        font.pixelSize: 28
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        Layout.preferredWidth: 115
                        Layout.preferredHeight: 54
                    }
                }

                MouseArea {
                    id: mouseArea
                    anchors.fill: parent

                    Connections {
                        target: mouseArea
                        onClicked: startView.state = "DirectoryList"
                    }
                }
                Layout.preferredWidth: 222
                Layout.preferredHeight: 79
            }

            Rectangle {
                id: rectangle2
                color: "#ffffff"
                RowLayout {
                    anchors.fill: parent
                    spacing: 12
                    Image {
                        id: edit_document1
                        source: "images/edit_document.svg"
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 49
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Text {
                        id: _text2
                        text: qsTr("Drawing")
                        font.pixelSize: 28
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        Layout.preferredWidth: 115
                        Layout.preferredHeight: 54
                    }
                }
                Layout.preferredWidth: 222
                Layout.preferredHeight: 79
                Layout.fillWidth: true
            }

            Rectangle {
                id: rectangle3
                color: "#ffffff"
                RowLayout {
                    anchors.fill: parent
                    spacing: 12
                    Image {
                        id: edit_document2
                        source: "images/edit_document.svg"
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 49
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Text {
                        id: _text3
                        text: qsTr("Image")
                        font.pixelSize: 28
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        Layout.preferredWidth: 115
                        Layout.preferredHeight: 54
                    }
                }
                Layout.preferredWidth: 222
                Layout.preferredHeight: 79
                Layout.fillWidth: true
            }

            Rectangle {
                id: table
                color: "#ffffff"
                RowLayout {
                    anchors.fill: parent
                    spacing: 12
                    Image {
                        id: edit_document3
                        source: "images/edit_document.svg"
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 49
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Text {
                        id: _text4
                        text: qsTr("Table")
                        font.pixelSize: 28
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        Layout.preferredWidth: 115
                        Layout.preferredHeight: 54
                    }
                }

                MouseArea {
                    id: mouseArea1
                    anchors.fill: parent
                }
                Layout.preferredWidth: 222
                Layout.preferredHeight: 79
                Layout.fillWidth: true
            }
        }
    }
}
