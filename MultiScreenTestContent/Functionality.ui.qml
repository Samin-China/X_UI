

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

    Rectangle {
        id: dataSync
        x: 288
        y: 310
        width: 527
        height: 980
        color: "#ffffff"
        border.width: 5
        Layout.preferredWidth: 424
        Layout.preferredHeight: 864
    }

    Text {
        id: _text
        x: 1327
        y: 824
        width: 240
        height: 112
        text: qsTr("Text")
        font.pixelSize: 32
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.bold: true
    }
}
