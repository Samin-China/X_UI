import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    width: 800
    height: 400

    property var headerModel: [
        { title: "", widthRatio: 0.05 },
        { title: "FileName", widthRatio: 0.19 },
        { title: "Last Updated", widthRatio: 0.19 },
        { title: "Revision", widthRatio: 0.19 },
        { title: "Updated People", widthRatio: 0.19 },
        { title: "Last Time", widthRatio: 0.19 }
    ]

    ColumnLayout {
        anchors.fill: parent
        spacing: 0
        Rectangle {
            id: rectangle
            height: 32
            color: "#ffffff"
            border.width: 0
            Layout.fillHeight: false
            Layout.fillWidth: true
            Layout.preferredWidth: 200
            Layout.preferredHeight: 32

            RowLayout {
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 8
                spacing: 0
                Rectangle {
                    id: rectangle2
                    color: "#4465e5"
                    Image {
                        id: upload
                        anchors.fill: parent
                        source: "images/upload.svg"
                        fillMode: Image.PreserveAspectFit
                    }
                    Layout.preferredWidth: 24
                    Layout.preferredHeight: 24
                }

                Rectangle {
                    id: rectangle3
                    color: "#da5566"
                    Image {
                        id: upload1
                        anchors.fill: parent
                        source: "images/delete.svg"
                        fillMode: Image.PreserveAspectFit
                    }
                    Layout.preferredWidth: 24
                    Layout.preferredHeight: 24
                }

                Rectangle {
                    id: rectangle4
                    color: "#ffffff"
                    Image {
                        id: upload2
                        anchors.fill: parent
                        source: "images/clear.svg"
                        fillMode: Image.PreserveAspectFit
                    }
                    Layout.preferredWidth: 24
                    Layout.preferredHeight: 24
                }
            }

            RowLayout {
                x: 0
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 8
                spacing: 0


                TextField {
                    id: textField
                    height: 24
                    Layout.preferredHeight: 0
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    placeholderText: qsTr("Text Field")
                }

                Image {
                    id: search2
                    source: "images/search (2).svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: rotate2
                    source: "images/rotate (2).svg"
                    fillMode: Image.PreserveAspectFit
                }

            }
        }

        Loader {
            id: loader
            source: "ModelTable.qml"
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 200
            Layout.preferredHeight: 223
        }
    }
}
