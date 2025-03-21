import QtQuick 2.7
import QtQuick.Controls 2.7

Item {
    id: control
    width: 640
    height: 480

    // 公开的信号：当点击某个子项时触发
    signal itemClicked(string uniqueId, string text)

    //假数据
    property var model: []


    property string currentItem: ""
    property bool autoExpand: true
    property int globalIndex: 0  // **用于全局索引计数**

    Rectangle {
        anchors.fill: parent
        color: "white"
        border.color: "#c8c9ca"
    }

    ListView {
        id: list_view
        anchors.fill: parent
        anchors.margins: 10
        model: control.model
        delegate: list_delegate
        clip: true
        spacing: 0
    }

    Component {
        id: list_delegate
        Column {
            width: list_view.width

            property bool isParent: modelData.subnodes && modelData.subnodes.length > 0
            property int indent: 20
            property int depth: modelData.depth || 0
            property string uniqueId: modelData.uniqueId
            property int localIndex: control.globalIndex++  // **每个项递增 globalIndex**

            Rectangle {
                width: list_view.width
                height: 30

                // **确保选中项优先显示**
                color: control.currentItem === uniqueId ? "#c4cdf8"
                       : mouseArea.containsMouse ? "#e9ecf8"
                       : localIndex % 2 === 0 ? "#ffffff" : "#fcfcfc"

                MouseArea {
                    id: mouseArea
                    anchors.fill: parent
                    hoverEnabled: true
                }

                Row {
                    spacing: 8
                    anchors.verticalCenter: parent.verticalCenter

                    Item {
                        width: indent * depth
                        height: 1
                    }

                    Image {
                        id: expandIcon
                        width: 16
                        height: 16
                        visible: isParent
                        source: item_sub.visible ? "images/remove.png" : "images/add.png"

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                item_sub.visible = !item_sub.visible;
                            }
                        }
                    }

                    Image {
                        id: item_icon
                        width: 16
                        height: 16
                        source: isParent ? "images/folder.png" : "images/news.png"
                    }

                    Text {
                        id: item_text
                        text: modelData.text
                        font.pixelSize: 14
                        font.family: "Microsoft YaHei UI"
                        color: "black"
                        horizontalAlignment: Text.AlignLeft
                        anchors.verticalCenter: parent.verticalCenter

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                if (!isParent) {
                                    control.currentItem = uniqueId;
                                    control.itemClicked(uniqueId, modelData.text);  // 发送信号
                                }
                            }
                        }
                    }
                }
            }

            Rectangle {
                width: list_view.width
                height: 1
                color: "#dededf"
            }

            Column {
                id: item_sub
                visible: control.autoExpand
                width: parent.width
                spacing: 0
                Repeater {
                    model: modelData.subnodes
                    delegate: list_delegate
                }
            }
        }
    }
}
