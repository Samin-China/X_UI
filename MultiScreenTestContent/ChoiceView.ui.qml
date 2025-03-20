

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

Rectangle {
    id: root
    width: Constants.width
    height: Constants.height

    CustomButton {
        id: customButton
        x: 727
        y: -220
    }
    states: [
        State {
            name: "HOVERED"
        },
        State {
            name: "NORMAL"
        }
    ]
}
