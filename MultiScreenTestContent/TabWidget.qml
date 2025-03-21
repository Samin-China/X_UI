import QtQuick
import QtQuick.Layouts
import QtQuick.Studio.DesignEffects

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height

    color: "#ffffff"

    property int currentIndex: 0 // 当前选中的 Tab 索引
    required property string projectTitle
    ColumnLayout {
        anchors.fill: parent

        // 自定义 TabBar
        RowLayout {
            spacing: 3
            Layout.preferredHeight: 60

            Repeater {
                model: ["Details", "Access", "Issue"]
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

                Rectangle {
                    id: rectangle1
                    x: 8
                    y: 8
                    width: 400
                    height: 399
                    color: "#ffffff"
                    radius: 5
                    border.color: "#e4e4e4"
                    border.width: 1

                    Image {
                        id: indeterminate
                        x: 77
                        y: 24
                        width: 246
                        height: 269
                        opacity: 0.334
                        source: "images/display_settings.png"
                        fillMode: Image.PreserveAspectFit
                    }

                    Text {
                        id: name
                        y: 312
                        width: 306
                        height: 45
                        color: "#5a62c7"
                        text: rectangle.projectTitle
                        font.pixelSize: 26
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        anchors.horizontalCenterOffset: -30
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.bold: true
                    }

                    DesignEffect {
                        effects: [
                            DesignDropShadow {
                            }
                        ]
                    }

                    Image {
                        id: edit
                        x: 354
                        y: 322
                        source: "images/edit_document2.svg"
                        fillMode: Image.PreserveAspectFit

                        MouseArea {
                            id: mouseArea
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            Connections {
                                target: mouseArea
                                onClicked: startView.state = "Functionality"
                            }
                        }
                    }
                }
            }

            Rectangle {
                color: "#FFFFFF"
                Layout.fillWidth: true
                Layout.fillHeight: true
                border.color: "#ffffff"
                border.width: 1
                radius: 8
                Text {
                    text: "This is Tab 2"
                    anchors.centerIn: parent
                    font.pixelSize: 20
                }
            }

            Rectangle {
                color: "#FFFFFF"
                Layout.fillWidth: true
                Layout.fillHeight: true
                border.color: "#ffffff"
                border.width: 1
                radius: 8
                Text {
                    text: "This is Tab 3"
                    anchors.centerIn: parent
                    font.pixelSize: 20
                }
            }
        }
    }
}
