import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("hello world")

    Item {
        width: 400; height: 200

        Rectangle {
            x: 100; y: 50
            /* position here does not matter, width is twice the height
              whatever the height is at any given point in time.
            */

            width: height * 2; height: 100
            color: "blue"
        }

        // Example showing property bindings

        TextInput {
            id: textElement
            x: 50; y: 25
            text: "qt quick"
            font.family: "Helvetica"; font.pixelSize: 50
        }

        Rectangle {
            x: 50; y: 75; height: 5
            width: textElement.width
            color: "green"
        }

    }
}
