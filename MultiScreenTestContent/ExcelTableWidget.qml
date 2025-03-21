import QtQuick
import QtQuick.Layouts

Rectangle {
    id: rectangle
    width: 2560
    height: 1600

    color: "#ffffff"

    property int currentIndex: 0 // 当前选中的 Tab 索引
    required property string tittle
    ColumnLayout {
        anchors.fill: parent

        // 自定义 TabBar
        RowLayout {
            spacing: 3
            Layout.preferredHeight: 60
            Repeater {
                model: ["Table"]
                delegate: Rectangle {
                    width: 167
                    height: 60
                    color: "#ffffff"
                    border.color: "#00000000"
                    border.width: 0

                    Text {
                        text: modelData
                        anchors.centerIn: parent
                        font.pixelSize: 18
                        color: index === currentIndex ? "#b7c3f3" : "#333333" // 选中字体颜色变化
                    }

                    // 选中时的底部条
                    Rectangle {
                        width: parent.width
                        height: 5
                        color: index === currentIndex ? "#b7c3f3" : "transparent"
                        anchors.bottom: parent.bottom
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {currentIndex = index}
                    }
                }
            }
        }

        // StackLayout 作为 Tab 内容区
        StackLayout {
            id: stackLayout
            Layout.fillWidth: true
            Layout.fillHeight: true
            currentIndex: rectangle.currentIndex // 绑定到 Rectangle 的 currentIndex

            Rectangle {
                color: "#FFFFFF"
                Layout.fillWidth: true
                Layout.fillHeight: true
                border.color: "#ffffff"
                border.width: 1
                radius: 8

                ColumnLayout {
                    anchors.fill: parent
                    spacing: 0

                    Rectangle {
                        id: tableName
                        color: "#ffffff"
                        border.width: 0
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.preferredWidth: 200
                        Layout.preferredHeight: 5

                        Text {
                            id: _text
                            y: 0
                            width: 167
                            height: 36
                            text: rectangle.tittle
                            anchors.left: parent.left
                            anchors.leftMargin: 5
                            font.pixelSize: 25
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                            font.bold: true
                        }

                        RowLayout {
                            x: 0
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.right: parent.right
                            anchors.rightMargin: 30

                            Image {
                                id: shoppingmode
                                source: "images/shoppingmode.svg"
                                fillMode: Image.PreserveAspectFit
                            }

                            Image {
                                id: filter
                                source: "images/filter.svg"
                                fillMode: Image.PreserveAspectFit
                            }

                            Image {
                                id: settings
                                source: "images/settings.svg"
                                fillMode: Image.PreserveAspectFit
                            }
                        }
                    }


                    Rectangle {
                        id: drwgRec
                        color: "#ffffff"
                        border.color: "#e7e7e8"
                        border.width: 1
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.preferredWidth: 200
                        Layout.preferredHeight: 5

                        Image {
                            id: _list
                            opacity: 0.5
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: parent.left
                            anchors.leftMargin: 5
                            source: "images/list.svg"
                            fillMode: Image.PreserveAspectFit
                        }

                        Text {
                            id: _text1
                            opacity: 0.5
                            text: qsTr("Drag here to set your groups")
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: parent.left
                            anchors.leftMargin: _list.x + _list.width + 5
                            font.pixelSize: 12
                        }
                    }

                    Loader {
                        id: excelTableloader
                        width: 200
                        height: 200
                        source: "ExcelTable.qml"
                        Layout.fillHeight: true
                        Layout.fillWidth: true

                    }
                }

            }
        }
    }
}
