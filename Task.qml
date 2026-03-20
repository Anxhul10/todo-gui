import QtQuick
import QtQuick.Controls

Rectangle {
    height: 40

    property string task
    signal remove()

    Row {
        anchors.fill: parent
        anchors.margins: 8
        spacing: 10
        Text {
            text: task
            color: "White"
        }
        Button {
            text: "delete"
            onClicked : {
                remove()
            }
        }
        
    }
}