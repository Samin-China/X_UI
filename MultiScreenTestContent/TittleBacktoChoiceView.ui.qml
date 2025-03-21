import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Studio.DesignEffects

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

            MouseArea {
                id: mouseArea
                anchors.fill: parent

                Connections {
                    target: mouseArea
                    onClicked: startView.state = "Choice"
                }
            }
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
