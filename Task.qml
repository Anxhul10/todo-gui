import QtQuick

Rectangle {
    height: 40

    property string task

    Column {
        anchors.centerIn: parent
        Text {
            text: task
            color: "White"
        }
    }
}