import QtQuick
import QtQuick.Controls

Window {
    id: root
    
    width: 640
    height: 480
    visible: true
    title: qsTr("todo")

    Rectangle {
        anchors.fill: parent
        color: "#00414a"

        Column {
            anchors.centerIn: parent

            TextField {
                id: input
                width: 250
                placeholderText: "Enter a task..."
            }

            Button {
                text: "Add Task"
                onClicked: {
                    console.log("task:", input.text)
                }
            }
        }
        
    }

    Component.onCompleted: {
        console.log("App started")
    }
}