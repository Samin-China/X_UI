import QtQuick 2.3
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.15
import QtQuick.Controls.Material 2.15
import QtQuick.Studio.DesignEffects


Item {
    id: _item
    anchors.fill: parent
    Row {
        id: buttonRow
        spacing: 100
        anchors.centerIn: parent
        height: 390

        Loader {
            id: userLoader
            sourceComponent: customButton
            onLoaded: {
                item.iconSource = "images/engineering.png"
                item.buttonName = "User Management"
                item.buttonDesc = "Go to the User Management page."
            }
        }
        Loader {
            id: projectLoader
            sourceComponent: customButton
            onLoaded: {
                item.iconSource = "images/display_settings.png"
                item.buttonName = "Project Management"
                item.buttonDesc = "Go to the Project Management page."

                item.hoverArea.onClicked.connect(function()
                {
                    startView.state = "ProjectList"
                })

            }
        }
        Loader {
            id: catalogLoader
            sourceComponent: customButton
            onLoaded: {
                item.iconSource = "images/Setting.png"
                item.buttonName = "Catalog Management"
                item.buttonDesc = "Go to the Catalog Management page."
            }
        }
        Loader {
            id: globalLoader
            sourceComponent: customButton
            onLoaded: {
                item.iconSource = "images/manufacturing.png"
                item.buttonName = "Global Management"
                item.buttonDesc = "Go to the Global Management page."
            }
        }

    }



    Component {
        id: customButton

        Rectangle {
            id: buttonRoot
            width: 255
            height: 390
            color: "#FFFFFF"
            radius: 8
            border.color: "#d4d4d4"
            border.width: 1


            property alias iconSource: btnIcon.source
            property alias buttonName: nameText.text
            property alias buttonDesc: descText.text
            property color textColor: "#333333"
            property alias hoverArea: hoverArea

            states: [
                State {
                    name: "HOVERED"
                    when: hoverArea.containsMouse
                    PropertyChanges {
                        target: buttonRoot;
                        border.color: "#969ACE";
                        scale: 1.02
                    }
                },
                State {
                    name: "NORMAL"
                    PropertyChanges {
                        target: buttonRoot;
                        border.color: "#D3D3D3";
                        scale: 1.0
                    }
                }
            ]

            ColumnLayout {
                anchors.centerIn: parent
                spacing: 20
                width: parent.width * 0.85

                Item {
                    Layout.alignment: Qt.AlignHCenter
                    width: 120
                    height: 120

                    Image {
                        id: btnIcon
                        anchors.centerIn: parent
                        sourceSize: Qt.size(120, 120)
                        fillMode: Image.PreserveAspectFit

                        BusyIndicator {
                            anchors.centerIn: parent
                            running: parent.status === Image.Loading
                            width: 40
                            height: 40
                        }
                    }
                }

                Column {
                    Layout.fillWidth: true
                    spacing: 8

                    Text {
                        id: nameText
                        width: parent.width
                        horizontalAlignment: Text.AlignLeft
                        wrapMode: Text.WordWrap
                        font {
                            pixelSize: 18
                            family: "Microsoft YaHei"
                            weight: Font.Bold
                        }
                        color: buttonRoot.textColor
                    }

                    Text {
                        id: descText
                        width: parent.width
                        horizontalAlignment: Text.AlignLeft
                        wrapMode: Text.WordWrap
                        font {
                            pixelSize: 12
                            family: "Microsoft YaHei"
                            weight: Font.Normal
                        }
                        color: "#666666"
                    }
                }
            }

            MouseArea {
                id: hoverArea
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
                onPressed: buttonRoot.scale = 0.95
                onReleased: buttonRoot.scale = 1.0
            }

            DesignEffect {
                visible: false
            }

            Behavior on scale {
                NumberAnimation {
                    duration: 150
                    easing.type: Easing.OutBack
                }
            }
            Behavior on border.color {
                ColorAnimation { duration: 200 }
            }
        }
    }
}

