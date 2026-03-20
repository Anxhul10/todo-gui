import QtQuick
import QtQuick.Controls

Window {
    id: root
    
    width: 640
    height: 480
    visible: true
    title: qsTr("todo")

    ListModel {
        id: taskmodel
    }

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
                    if(input.text !== "") {
                        taskmodel.append({task: input.text})
                        input.text = ""
                    }
                }
            }
            ListView {
                width: 100
                height: 200
                model: taskmodel

                delegate: Task {
                    task: model.task
                }
            }
        }
        
    }

    Component.onCompleted: {
        console.log("App started")
    }
}