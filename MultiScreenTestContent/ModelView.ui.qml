

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

    //定义传递给TreeList的数据
    property var externalModel: [{
            "text": "Root",
            "istitle": true,
            "depth": 0,
            "uniqueId": "Root",
            "subnodes": [{
                    "text": "Clinic",
                    "istitle": true,
                    "depth": 1,
                    "uniqueId": "Root_Clinic"
                }]
        }]

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
            border.width: 0
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 192
            Layout.preferredHeight: 1564

            ColumnLayout {
                anchors.fill: parent
                spacing: 0
                Text {
                    id: directoryList
                    text: qsTr("Directory List")
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                    font.weight: Font.Black
                    font.bold: true
                    Layout.preferredWidth: 492
                    Layout.preferredHeight: 40
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
                        font.pixelSize: 20
                        verticalAlignment: Text.AlignVCenter
                    }
                    Layout.preferredHeight: 40
                    Layout.fillWidth: true
                    Layout.fillHeight: false
                }

                Loader {
                    id: loader
                    width: 200
                    height: 200
                    source: "TreeList.qml"
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    Connections {
                        target: loader
                        onLoaded: {
                            loader.item.model = externalModel
                        }
                    }
                }
            }
        }

        Rectangle {
            id: rectangle1
            color: "#ffffff"
            border.width: 0
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 396
            Layout.preferredHeight: 1564

            Loader {
                id: tableLoader
                anchors.fill: parent
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
    Connections {
        target: loader.item
        onItemClicked: (uniqueId, projectName) => {
                           tableLoader.sourceComponent = null
                           tableLoader.setSource("ModelTableWidget.qml")
                       }
    }
}
