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

        // 表头
        Rectangle {
            Layout.fillWidth: true
            height: 40
            color: "#f0f0f0"

            RowLayout {
                anchors.fill: parent
                spacing: 0

                Repeater {
                    model: headerModel
                    delegate: Rectangle {
                        Layout.preferredWidth: modelData.widthRatio * parent.width
                        Layout.fillHeight: true
                        border { width: 0; color: "#cccccc" }

                        Rectangle {
                            width: 1
                            height: parent.height * 0.4  // 缩短为父容器高度的40%
                            color: "#999999"
                            anchors {
                                right: parent.right
                                verticalCenter: parent.verticalCenter
                            }
                            visible: (index !== 0) && (index !== headerModel.length - 1)
                         }

                        CheckBox {
                            visible: index === 0
                            anchors.centerIn: parent
                            onCheckedChanged: {
                                for (let i = 0; i < listModel.count; i++) {
                                    listModel.setProperty(i, "isChecked", checked)
                                }
                            }
                        }

                        Text {
                            visible: index !== 0
                            text: modelData.title
                            anchors {
                                left: parent.left
                                verticalCenter: parent.verticalCenter
                                leftMargin: 12
                            }
                            horizontalAlignment: Text.AlignLeft
                            font {
                                bold: true
                                pixelSize: 14
                            }
                        }
                    }
                }
            }
        }

        // 表格内容
        ListView {
            id: listView
            Layout.fillWidth: true
            Layout.fillHeight: true
            clip: true
            spacing: 1
            model: listModel

            delegate: Rectangle {
                id: rowDelegate
                width: parent.width
                height: 40
                // 添加悬停状态
                property bool hovered: false
                color: {
                    if(isChecked) return "#c4cdf8";
                    if(hovered) return "#e9ecf8";
                    return index % 2 === 0 ? "#ffffff" : "#f8f8f8"
                }

                required property int index
                required property bool isChecked
                required property string fileName
                required property string lastUpdated
                required property string revision
                required property string updatedPeople
                required property string lastTime

                RowLayout {
                    anchors.fill: parent
                    spacing: 0

                    Repeater {
                        model: headerModel
                        delegate: Rectangle {
                            Layout.preferredWidth: modelData.widthRatio * parent.width
                            Layout.fillHeight: true
                            color: "transparent"

                            CheckBox {
                                visible: index === 0
                                anchors.centerIn: parent
                                checked: rowDelegate.isChecked
                                onCheckedChanged: {
                                    if (checked !== rowDelegate.isChecked) {
                                        listModel.setProperty(rowDelegate.index, "isChecked", checked)
                                    }
                                }
                            }

                            Text {
                                visible: index !== 0
                                text: {
                                    switch(index) {
                                        case 1: return rowDelegate.fileName;
                                        case 2: return rowDelegate.lastUpdated;
                                        case 3: return rowDelegate.revision;
                                        case 4: return rowDelegate.updatedPeople;
                                        case 5: return rowDelegate.lastTime;
                                        default: return ""
                                    }
                                }
                                horizontalAlignment: Text.AlignLeft
                                verticalAlignment: Text.AlignVCenter
                                anchors {
                                    fill: parent
                                    leftMargin: 12
                                    rightMargin: 12
                                }
                                elide: Text.ElideRight
                            }
                        }
                    }
                }

                // 鼠标区域
                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: rowDelegate.hovered = true
                    onExited: rowDelegate.hovered = false
                    onClicked: listModel.setProperty(rowDelegate.index, "isChecked", !rowDelegate.isChecked)
                }
            }
        }
    }

    ListModel {
        id: listModel
        ListElement {
            fileName: "report"
            lastUpdated: "2025-03-15"
            revision: "R0"
            updatedPeople: "Admin"
            lastTime: "2021-03-15"
            isChecked: false
        }
        ListElement {
            fileName: "data"
            lastUpdated: "2025-03-18"
            revision: "R0"
            updatedPeople: "Admin"
            lastTime: "2021-03-15"
            isChecked: false
        }
        ListElement {
            fileName: "report"
            lastUpdated: "2025-03-15"
            revision: "R0"
            updatedPeople: "Admin"
            lastTime: "2021-03-15"
            isChecked: false
        }
        ListElement {
            fileName: "data"
            lastUpdated: "2025-03-18"
            revision: "R0"
            updatedPeople: "Admin"
            lastTime: "2021-03-15"
            isChecked: false
        }
        ListElement {
            fileName: "report"
            lastUpdated: "2025-03-15"
            revision: "R0"
            updatedPeople: "Admin"
            lastTime: "2021-03-15"
            isChecked: false
        }
        ListElement {
            fileName: "data"
            lastUpdated: "2025-03-18"
            revision: "R0"
            updatedPeople: "Admin"
            lastTime: "2021-03-15"
            isChecked: false
        }
    }
}
