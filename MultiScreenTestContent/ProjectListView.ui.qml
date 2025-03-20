

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
import QtQuick.Studio.DesignEffects
import QtQuick.Studio.Effects
import QtMultimedia
import QtQuick.Studio.MultiText

Rectangle {
    id: root
    width: Constants.width
    height: Constants.height
    property string currentProjectName: ""
    ColumnLayout {
        anchors.fill: parent
        Rectangle {
            id: tittleRectangle
            color: "#ffffff"
            border.color: "#e6e6e6"
            border.width: 0
            Layout.fillHeight: false
            Layout.fillWidth: true
            Layout.preferredWidth: 1745
            Layout.preferredHeight: 120

            RowLayout {
                y: 30
                anchors.left: parent.left
                anchors.leftMargin: 20
                Image {
                    id: _1742344927414
                    source: "images/1742344927414.jpg"
                    fillMode: Image.PreserveAspectFit
                    Layout.preferredHeight: 60
                }

                Text {
                    id: pageName
                    text: qsTr("Project List")
                    font.pixelSize: 45
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    font.weight: Font.Normal
                    Layout.fillHeight: false
                    Layout.fillWidth: false
                    font.bold: true
                }
            }

            DesignEffect {
                effects: [
                    DesignDropShadow {}
                ]
            }

            Button {
                id: account
                x: 1743
                width: 100
                height: 60
                text: qsTr("samin")
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 60
                font.pointSize: 15
                icon.source: "images/person.svg"
                flat: true
                background: Rectangle {
                    color: "transparent" // 取消默认背景变化
                }

                Connections {
                    target: account
                    onClicked: menu.open()
                }
            }
            Menu {
                id: menu
                y: account.y + account.height // 让菜单显示在按钮下方
                x: account.x // 让菜单水平对齐按钮
                width: 150

                MenuItem {
                    id: projectItem
                    text: "Project"
                }
                MenuItem {
                    id: adminItem
                    text: "Admin"
                }
                MenuItem {
                    id: passwordItem
                    text: "Change Password"
                }
                MenuItem {
                    id: logoutItem
                    text: "Logout"

                    Connections {
                        target: logoutItem
                        onClicked: startView.state = "Login"
                    }
                }
            }
        }

        RowLayout {
            Rectangle {
                id: projectListRectangle
                color: "#ffffff"
                Layout.minimumWidth: 0
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredWidth: 50
                Layout.preferredHeight: 200

                ColumnLayout {
                    anchors.fill: parent
                    spacing: 0

                    Rectangle {
                        id: rectangle1
                        width: 387
                        color: "#f8f8f8"
                        border.color: "#dededf"
                        Layout.fillHeight: false
                        Layout.fillWidth: true
                        Layout.preferredWidth: 367
                        Layout.preferredHeight: 46

                        Text {
                            id: itemName
                            text: qsTr("Item Name")
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: parent.left
                            anchors.leftMargin: 9
                            font.pixelSize: 17
                            font.bold: true
                        }
                    }
                    ProjectList {
                        id: projectList
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                    }
                }
            }

            Rectangle {
                id: displayRectangle
                color: "#ffffff"
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredWidth: 200
                Layout.preferredHeight: 200

                ColumnLayout {
                    anchors.fill: parent

                    Rectangle {
                        id: projectTittle
                        color: "#ffffff"
                        Layout.fillHeight: false
                        Layout.fillWidth: true
                        Layout.preferredWidth: 200
                        Layout.preferredHeight: 70

                        Text {
                            id: projectText
                            text: root.currentProjectName
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.top: parent.top
                            anchors.topMargin: 25
                            font.pixelSize: 25
                            font.bold: true
                        }
                    }
                    Loader {
                        id: pageLoader
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                    }
                }
            }
        }
    }
    Component {
        id: tabWidgetComponent
        TabWidget {
            required property string projectTitle
        }
    }

    Connections {
        target: projectList
        onItemClicked: (uniqueId, projectName) => {
                           pageLoader.sourceComponent = null
                           //pageLoader.sourceComponent = tabWidgetComponent
                           pageLoader.setSource("TabWidget.qml", {
                                                    "projectTitle": projectName
                                                })
                           root.currentProjectName = projectName
                       }
    }
}
