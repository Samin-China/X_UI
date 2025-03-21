import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    width: 800
    height: 400

    property var headerModel: [
        { title: "File Name", widthRatio: 0.2 },
        { title: "Level 2", widthRatio: 0.1 },
        { title: "Level 3", widthRatio: 0.1 },
        { title: "Construction Vendor", widthRatio: 0.2 },
        { title: "Discipline", widthRatio: 0.1 },
        { title: "FL", widthRatio: 0.05 },
        { title: "Start Time", widthRatio: 0.125 },
        { title: "Final Time", widthRatio: 0.125 }
    ]

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        // 表头
        Rectangle {
            Layout.fillWidth: true
            height: 40
            color: "#f8f8f8"

            RowLayout {
                anchors.fill: parent
                spacing: 0

                Repeater {
                    model: headerModel
                    delegate: Rectangle {
                        Layout.preferredWidth: modelData.widthRatio * parent.width
                        color: "transparent"
                        Layout.fillHeight: true
                        border { width: 0; color: "#cccccc" }

                        Rectangle {
                            width: 1
                            height: parent.height * 0.4  // 缩短为父容器高度的40%
                            color: "#bcc6d6"
                            anchors {
                                right: parent.right
                                verticalCenter: parent.verticalCenter
                            }
                            visible: index !== headerModel.length - 1  // 最后一列不显示
                         }

                        Text {
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
                            elide: Text.ElideRight
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
                property bool hovered: false
                color: {
                    if(hovered) return "#e9ecf8";
                    return index % 2 === 0 ? "#ffffff" : "#f8f8f8"
                }

                required property int index
                required property string fileName
                required property string level2
                required property string level3
                required property string constructionVendor
                required property string discipline
                required property string fl
                required property string startTime
                required property string finalTime

                RowLayout {
                    anchors.fill: parent
                    spacing: 0

                    Repeater {
                        model: headerModel
                        delegate: Rectangle {
                            Layout.preferredWidth: modelData.widthRatio * parent.width
                            Layout.fillHeight: true
                            color: "transparent"

                            Text {
                                text: {
                                    switch(index) {
                                        case 0: return rowDelegate.fileName;
                                        case 1: return rowDelegate.level2;
                                        case 2: return rowDelegate.level3;
                                        case 3: return rowDelegate.constructionVendor;
                                        case 4: return rowDelegate.discipline;
                                        case 5: return rowDelegate.fl;
                                        case 6: return rowDelegate.startTime;
                                        case 7: return rowDelegate.finalTime;
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

                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: rowDelegate.hovered = true
                    onExited: rowDelegate.hovered = false
                }
            }
        }
    }
    ListModel {
        id: listModel
        ListElement {
            fileName: "Clinic_A.rvt"
            level2: "L2-01"
            level3: "L3-A"
            constructionVendor: "ABC Construction"
            discipline: "Civil"
            fl: "F01"
            startTime: "2024-03-01"
            finalTime: "2024-12-31"
        }
        ListElement {
            fileName: "safety_report.rvt"
            level2: "L2-02"
            level3: "L3-B"
            constructionVendor: "XYZ Engineering"
            discipline: "MEP"
            fl: "F02"
            startTime: "2024-04-15"
            finalTime: "2024-11-30"
        }
        ListElement {
            fileName: "Clinic_A.rvt"
            level2: "L2-01"
            level3: "L3-A"
            constructionVendor: "ABC Construction"
            discipline: "Civil"
            fl: "F01"
            startTime: "2024-03-01"
            finalTime: "2024-12-31"
        }
        ListElement {
            fileName: "safety_report.rvt"
            level2: "L2-02"
            level3: "L3-B"
            constructionVendor: "XYZ Engineering"
            discipline: "MEP"
            fl: "F02"
            startTime: "2024-04-15"
            finalTime: "2024-11-30"
        }
    }

}
