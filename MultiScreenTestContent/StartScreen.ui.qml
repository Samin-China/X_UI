

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import MultiScreenTest
import QtQuick.Layouts
import Qt.SafeRenderer

Rectangle {
    id: startView
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor
    state: "Login"

    Loader {
        id: choiceView
        visible: false
        anchors.fill: parent
        source: "ChoiceView.ui.qml"
        active: false
    }

    Loader {
        id: loginView
        visible: false
        anchors.fill: parent
        source: "LoginView.ui.qml"
        active: false
    }

    Loader {
        id: projectView
        visible: false
        anchors.fill: parent
        source: "ProjectListView.ui.qml"
        active: false
    }

    Loader {
        id: functionalityView
        visible: false
        anchors.fill: parent
        source: "ProjectListView.ui.qml"
        active: false
    }

    Loader {
        id: modelView
        visible: false
        anchors.fill: parent
        source: "DirectoryList.ui.qml"
        active: false
    }

    Loader {
        id: excelTableView
        visible: false
        anchors.fill: parent
        source: "DirectoryList.ui.qml"
        active: false
    }

    states: [
        State {
            name: "Login"

            PropertyChanges {
                target: loginView
                visible: true
                active: true
            }
        },
        State {
            name: "Choice"

            PropertyChanges {
                target: choiceView
                visible: true
                active: true
            }
        },
        State {
            name: "ProjectList"

            PropertyChanges {
                target: projectView
                visible: true
                active: true
            }
        },
        State {
            name: "Functionality"

            PropertyChanges {
                target: functionalityView
                visible: true
                source: "Functionality.ui.qml"
                active: true
            }
        },
        State {
            name: "Model"

            PropertyChanges {
                target: modelView
                visible: true
                source: "ModelView.ui.qml"
                active: true
            }
        },
        State {
            name: "ExcelTable"

            PropertyChanges {
                target: excelTableView
                visible: true
                source: "ExcelTableView.ui.qml"
                active: true
            }
        }
    ]
}
