

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
    opacity: 1
    state: "EyeOff"

    ColumnLayout {
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -59
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 20
        Text {
            id: tittle
            text: qsTr("Sign In")
            font.pixelSize: 24
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "Arial"
            font.bold: true
            Layout.preferredWidth: 462
            Layout.preferredHeight: 63
        }

        Rectangle {
            id: account
            color: "#ffffff"
            radius: 10
            border.color: "#cecce6"
            Layout.preferredWidth: 467
            Layout.preferredHeight: 40

            TextEdit {
                id: accountInput
                width: 387
                height: 40
                visible: true
                text: ""
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 20
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Rectangle {
            id: password
            color: "#ffffff"
            radius: 10
            border.color: "#cecce6"
            Layout.preferredWidth: 467
            Layout.preferredHeight: 40

            TextInput {
                id: passwordInput
                width: 387
                height: 40
                text: qsTr("")
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 20
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                echoMode: TextInput.Password
            }
        }

        Rectangle {
            id: submit
            color: "#475ce5"
            radius: 10
            border.color: "#475ce5"
            MouseArea {
                id: mouseArea
                anchors.fill: parent
                Connections {
                    target: mouseArea
                    onClicked: startView.state = "Choice"
                }
            }

            Text {
                id: _text
                y: 201
                width: 75
                height: 30
                color: "#ffffff"
                text: qsTr("Submit")
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Layout.preferredWidth: 467
            Layout.preferredHeight: 40
        }
    }

    RoundButton {
        id: personIcon
        x: 1054
        y: 701
        text: "+"
        flat: true
        icon.source: "images/person.svg"
        display: AbstractButton.IconOnly
        background: Rectangle {
            color: "#00000000"
        }
    }

    RoundButton {
        id: lockIcon
        x: 1054
        y: 760
        text: "+"
        icon.source: "images/lock.svg"
        display: AbstractButton.IconOnly
        flat: true
        background: Rectangle {
            color: "#00000000"
        }
    }

    RoundButton {
        id: eyeoffIcon
        x: 1467
        y: 760
        opacity: 0.498
        text: "+"
        flat: true
        icon.source: "images/visibility_off.svg"
        display: AbstractButton.IconOnly

        Connections {
            target: eyeoffIcon
            onClicked: root.state = "EyeOn"
        }
    }

    RoundButton {
        id: eyeonIcon
        x: 1467
        y: 760
        opacity: 0.498
        visible: false
        text: "+"
        icon.source: "images/visibility.svg"
        flat: true
        display: AbstractButton.IconOnly

        Connections {
            target: eyeonIcon
            onClicked: root.state = "EyeOff"
        }
    }
    states: [
        State {
            name: "EyeOff"

            PropertyChanges {
                target: passwordInput
                echoMode: TextInput.Password
            }
        },
        State {
            name: "EyeOn"

            PropertyChanges {
                target: eyeonIcon
                visible: true
            }

            PropertyChanges {
                target: eyeoffIcon
                visible: false
            }

            PropertyChanges {
                target: passwordInput
                echoMode: TextInput.Normal
            }
        }
    ]
}
