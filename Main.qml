import QtQuick

Window {
    width: 1000
    height: 1000
    visible: true
    title: qsTr("hello world")

    Rectangle {
        id: background
        width: 300; height: 100
        color: "lightblue"

        Rectangle {
            color: "green"
            y: 25
            height: 50; width: 50
            // anchors constrain the position of an item relative to another one
            // anchors of other items are referred to directly
            // - use background.right NOT anchors.background.right
            // anchors.right: background.right
            // anchors.top: background.top
            anchors {
                // anchors constrain the position AND the size of an item relative to another one
                // anchor can be used with sizing
                // - if width and anchors left/right are both set, anchors override the width
                left: background.left
                right: background.right
                top: background.top
            }

        }

        Rectangle {
            id: bg
            width: 400; height: 200
            color: "grey"

            Image {
                id: jeep; source: "resources/images/jeep-backsplash.jpg"
                width: sourceSize.width * 0.1
                height: sourceSize.height * 0.1
            }

            Text {
                text: "this is a jeep"; font.pixelSize: 32
                anchors {
                    left: jeep.right
                    leftMargin: 32
                    baseline: jeep.verticalCenter
                }
            }

        }
    }

}
