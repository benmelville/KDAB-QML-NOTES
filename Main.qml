import QtQuick

Window {
    width: 1000
    height: 1000
    visible: true

    Rectangle {
        color: "green"
        // This creates a binding loop between parent and child so we use implicitWidth: and implicitHeight:
        // width: child.width
        // height: child.height
        implicitWidth: child.implicitWidth
        implicitHeight: child.implicitHeight


        Image {
            source: "resources/images/jeep-backsplash.jpg"
            id: child
            anchors.fill: parent
            anchors.margins: 15
        }
    }

}
