

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
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 344
        anchors.topMargin: 100
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 312

        ColumnLayout {
            spacing: 20
            Text {
                id: _text26
                text: qsTr("Data Sync")
                font.pixelSize: 50
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                Layout.preferredWidth: 184
                Layout.preferredHeight: 76
            }

            Rectangle {
                id: rectangle27
                color: "#ffffff"
                RowLayout {
                    anchors.fill: parent
                    spacing: -15
                    Image {
                        id: edit_document23
                        source: "images/edit_document.svg"
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 49
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Text {
                        id: _text27
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
                    x: -478
                    y: 150
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    Connections {
                        target: mouseArea
                        onClicked: startView.state = "Model"
                    }
                }
                Layout.preferredWidth: 219
                Layout.preferredHeight: 74
                Layout.fillWidth: true
                Layout.fillHeight: false
            }

            Rectangle {
                id: rectangle28
                color: "#ffffff"
                RowLayout {
                    anchors.fill: parent
                    spacing: -15
                    Image {
                        id: edit_document24
                        source: "images/edit_document.svg"
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 49
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Text {
                        id: _text28
                        text: qsTr("Point Cloud")
                        font.pixelSize: 28
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        Layout.preferredWidth: 115
                        Layout.preferredHeight: 54
                    }
                }
                Layout.preferredWidth: 219
                Layout.preferredHeight: 74
                Layout.fillWidth: true
                Layout.fillHeight: false
            }

            Rectangle {
                id: rectangle29
                color: "#ffffff"
                RowLayout {
                    anchors.fill: parent
                    spacing: -15
                    Image {
                        id: edit_document25
                        source: "images/edit_document.svg"
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 49
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Text {
                        id: _text29
                        text: qsTr("Drawing")
                        font.pixelSize: 28
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        Layout.preferredWidth: 115
                        Layout.preferredHeight: 54
                    }
                }
                Layout.preferredWidth: 219
                Layout.preferredHeight: 74
                Layout.fillWidth: true
                Layout.fillHeight: false
            }

            Rectangle {
                id: rectangle30
                color: "#ffffff"
                RowLayout {
                    anchors.fill: parent
                    spacing: -15
                    Image {
                        id: edit_document26
                        source: "images/edit_document.svg"
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 49
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Text {
                        id: _text30
                        text: qsTr("P&ID")
                        font.pixelSize: 28
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        Layout.preferredWidth: 115
                        Layout.preferredHeight: 54
                    }
                }
                Layout.preferredWidth: 219
                Layout.preferredHeight: 74
                Layout.fillWidth: true
                Layout.fillHeight: false
            }

            Rectangle {
                id: rectangle31
                color: "#ffffff"
                RowLayout {
                    anchors.fill: parent
                    spacing: -15
                    Image {
                        id: edit_document27
                        source: "images/edit_document.svg"
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 49
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Text {
                        id: _text31
                        text: qsTr("Image")
                        font.pixelSize: 28
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        Layout.preferredWidth: 115
                        Layout.preferredHeight: 54
                    }
                }
                Layout.preferredWidth: 219
                Layout.preferredHeight: 74
                Layout.fillWidth: true
                Layout.fillHeight: false
            }

            Rectangle {
                id: rectangle32
                color: "#ffffff"
                RowLayout {
                    anchors.fill: parent
                    spacing: -15
                    Image {
                        id: edit_document28
                        source: "images/edit_document.svg"
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 49
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Text {
                        id: _text32
                        text: qsTr("General Files (pdf, xlsx, docx, pptx)")
                        font.pixelSize: 28
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        Layout.preferredWidth: 115
                        Layout.preferredHeight: 54
                    }
                }
                Layout.preferredWidth: 219
                Layout.preferredHeight: 74
                Layout.fillWidth: true
                Layout.fillHeight: false
            }

            Rectangle {
                id: rectangle33
                color: "#ffffff"
                RowLayout {
                    anchors.fill: parent
                    spacing: -15
                    Image {
                        id: edit_document29
                        source: "images/edit_document.svg"
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 49
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Text {
                        id: _text33
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
                    x: -478
                    y: 97
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    Connections {
                        target: mouseArea1
                        onClicked: startView.state = "ExcelTable"
                    }
                }
                Layout.preferredWidth: 219
                Layout.preferredHeight: 74
                Layout.fillWidth: true
                Layout.fillHeight: false
            }
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        }

        ColumnLayout {
            spacing: 20
            Text {
                id: _text16
                text: qsTr("Authoring")
                font.pixelSize: 50
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                Layout.preferredWidth: 184
                Layout.preferredHeight: 76
            }

            Rectangle {
                id: rectangle18
                color: "#ffffff"
                RowLayout {
                    anchors.fill: parent
                    spacing: -15
                    Image {
                        id: edit_document14
                        source: "images/edit_document.svg"
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 49
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Text {
                        id: _text17
                        text: qsTr("Project Grid")
                        font.pixelSize: 28
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        Layout.preferredWidth: 115
                        Layout.preferredHeight: 54
                    }
                }
                Layout.preferredWidth: 219
                Layout.preferredHeight: 74
                Layout.fillWidth: true
                Layout.fillHeight: false
            }

            Rectangle {
                id: rectangle19
                color: "#ffffff"
                RowLayout {
                    anchors.fill: parent
                    spacing: -15
                    Image {
                        id: edit_document15
                        source: "images/edit_document.svg"
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 49
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Text {
                        id: _text18
                        text: qsTr("Spatial Data Positioning")
                        font.pixelSize: 28
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        Layout.preferredWidth: 115
                        Layout.preferredHeight: 54
                    }
                }
                Layout.preferredWidth: 219
                Layout.preferredHeight: 74
                Layout.fillWidth: true
                Layout.fillHeight: false
            }

            Rectangle {
                id: rectangle20
                color: "#ffffff"
                RowLayout {
                    anchors.fill: parent
                    spacing: -15
                    Image {
                        id: edit_document16
                        source: "images/edit_document.svg"
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 49
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Text {
                        id: _text19
                        text: qsTr("Point Cloud Segmentation")
                        font.pixelSize: 28
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        Layout.preferredWidth: 115
                        Layout.preferredHeight: 54
                    }
                }
                Layout.preferredWidth: 219
                Layout.preferredHeight: 74
                Layout.fillWidth: true
                Layout.fillHeight: false
            }

            Rectangle {
                id: rectangle21
                color: "#ffffff"
                RowLayout {
                    anchors.fill: parent
                    spacing: -15
                    Image {
                        id: edit_document17
                        source: "images/edit_document.svg"
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 49
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Text {
                        id: _text20
                        text: qsTr("Clash Set ")
                        font.pixelSize: 28
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        Layout.preferredWidth: 115
                        Layout.preferredHeight: 54
                    }
                }
                Layout.preferredWidth: 219
                Layout.preferredHeight: 74
                Layout.fillWidth: true
                Layout.fillHeight: false
            }

            Rectangle {
                id: rectangle22
                color: "#ffffff"
                RowLayout {
                    anchors.fill: parent
                    spacing: -15
                    Image {
                        id: edit_document18
                        source: "images/edit_document.svg"
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 49
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Text {
                        id: _text21
                        text: qsTr("Query Set")
                        font.pixelSize: 28
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        Layout.preferredWidth: 115
                        Layout.preferredHeight: 54
                    }
                }
                Layout.preferredWidth: 219
                Layout.preferredHeight: 74
                Layout.fillWidth: true
                Layout.fillHeight: false
            }

            Rectangle {
                id: rectangle23
                color: "#ffffff"
                RowLayout {
                    anchors.fill: parent
                    spacing: -15
                    Image {
                        id: edit_document19
                        source: "images/edit_document.svg"
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 49
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Text {
                        id: _text22
                        text: qsTr("Space")
                        font.pixelSize: 28
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        Layout.preferredWidth: 115
                        Layout.preferredHeight: 54
                    }
                }
                Layout.preferredWidth: 219
                Layout.preferredHeight: 74
                Layout.fillWidth: true
                Layout.fillHeight: false
            }

            Rectangle {
                id: rectangle24
                color: "#ffffff"
                RowLayout {
                    anchors.fill: parent
                    spacing: -15
                    Image {
                        id: edit_document20
                        source: "images/edit_document.svg"
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 49
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Text {
                        id: _text23
                        text: qsTr("Data Relation Set")
                        font.pixelSize: 28
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        Layout.preferredWidth: 115
                        Layout.preferredHeight: 54
                    }
                }
                Layout.preferredWidth: 219
                Layout.preferredHeight: 74
                Layout.fillWidth: true
                Layout.fillHeight: false
            }

            Rectangle {
                id: rectangle25
                color: "#ffffff"
                RowLayout {
                    anchors.fill: parent
                    spacing: -15
                    Image {
                        id: edit_document21
                        source: "images/edit_document.svg"
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 49
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Text {
                        id: _text24
                        text: qsTr("Spavy Designer")
                        font.pixelSize: 28
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        Layout.preferredWidth: 115
                        Layout.preferredHeight: 54
                    }
                }
                Layout.preferredWidth: 219
                Layout.preferredHeight: 74
                Layout.fillWidth: true
                Layout.fillHeight: false
            }

            Rectangle {
                id: rectangle26
                color: "#ffffff"
                RowLayout {
                    anchors.fill: parent
                    spacing: -15
                    Image {
                        id: edit_document22
                        source: "images/edit_document.svg"
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 49
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Text {
                        id: _text25
                        text: qsTr("Minimap")
                        font.pixelSize: 28
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        Layout.preferredWidth: 115
                        Layout.preferredHeight: 54
                    }
                }
                Layout.preferredWidth: 219
                Layout.preferredHeight: 74
                Layout.fillWidth: true
                Layout.fillHeight: false
            }
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        }

        ColumnLayout {
            spacing: 20
            Text {
                id: _text11
                text: qsTr("Transform")
                font.pixelSize: 50
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                Layout.preferredWidth: 184
                Layout.preferredHeight: 76
            }

            Rectangle {
                id: rectangle14
                color: "#ffffff"
                RowLayout {
                    anchors.fill: parent
                    spacing: -15
                    Image {
                        id: edit_document10
                        source: "images/edit_document.svg"
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 49
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Text {
                        id: _text12
                        text: qsTr("Tabular Data Manager")
                        font.pixelSize: 28
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        Layout.preferredWidth: 115
                        Layout.preferredHeight: 54
                    }
                }
                Layout.preferredWidth: 219
                Layout.preferredHeight: 74
                Layout.fillWidth: true
                Layout.fillHeight: false
            }

            Rectangle {
                id: rectangle15
                color: "#ffffff"
                RowLayout {
                    anchors.fill: parent
                    spacing: -15
                    Image {
                        id: edit_document11
                        source: "images/edit_document.svg"
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 49
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Text {
                        id: _text13
                        text: qsTr("Composite Table Relation")
                        font.pixelSize: 28
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        Layout.preferredWidth: 115
                        Layout.preferredHeight: 54
                    }
                }
                Layout.preferredWidth: 219
                Layout.preferredHeight: 74
                Layout.fillWidth: true
                Layout.fillHeight: false
            }

            Rectangle {
                id: rectangle16
                color: "#ffffff"
                RowLayout {
                    anchors.fill: parent
                    spacing: -15
                    Image {
                        id: edit_document12
                        source: "images/edit_document.svg"
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 49
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Text {
                        id: _text14
                        text: qsTr("Data Relocation & Clean Up")
                        font.pixelSize: 28
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        Layout.preferredWidth: 115
                        Layout.preferredHeight: 54
                    }
                }
                Layout.preferredWidth: 219
                Layout.preferredHeight: 74
                Layout.fillWidth: true
                Layout.fillHeight: false
            }

            Rectangle {
                id: rectangle17
                color: "#ffffff"
                RowLayout {
                    anchors.fill: parent
                    spacing: -15
                    Image {
                        id: edit_document13
                        source: "images/edit_document.svg"
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 49
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Text {
                        id: _text15
                        text: qsTr("Custom Tree")
                        font.pixelSize: 28
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        Layout.preferredWidth: 115
                        Layout.preferredHeight: 54
                    }
                }
                Layout.preferredWidth: 219
                Layout.preferredHeight: 74
                Layout.fillWidth: true
                Layout.fillHeight: false
            }
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        }

        ColumnLayout {
            spacing: 20
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            Text {
                id: _text
                text: qsTr("Visualize & Operation")
                font.pixelSize: 50
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                Layout.preferredWidth: 184
                Layout.preferredHeight: 76
            }

            Rectangle {
                id: rectangle13
                color: "#ffffff"
                RowLayout {
                    anchors.fill: parent
                    spacing: -15
                    Image {
                        id: edit_document9
                        source: "images/edit_document.svg"
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 49
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Text {
                        id: _text10
                        text: qsTr("Data Relocation & Clean Up")
                        font.pixelSize: 28
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        Layout.preferredWidth: 115
                        Layout.preferredHeight: 54
                    }
                }
                Layout.preferredWidth: 219
                Layout.preferredHeight: 74
                Layout.fillWidth: true
                Layout.fillHeight: false
            }
        }
    }
}
