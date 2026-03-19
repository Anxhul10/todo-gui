import QtQuick

Window {
    id: root
    
    width: 640
    height: 480
    visible: true
    title: qsTr("todo")
    nested 
    Rectangle {
        width: root.width
        height: root.height
        color: "#00414a"
    }
    Component.onCompleted: {
        console.log("Image status:", image.source)
    }
}
