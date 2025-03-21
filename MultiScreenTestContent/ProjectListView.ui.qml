

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
        TittleBacktoChoiceView {
            id: tittleRectangle
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
