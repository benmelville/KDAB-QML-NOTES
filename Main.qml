import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("hello world")

     // Item is just a container, does not look like anything
    Item {
        width: 400; height: 200

        Rectangle {
            x: 100; y: 50 // 0,0 is top leftmost corner
            height: 100
            width: foo() // this is actually a js expression
            color: "lightblue"

            function foo() {
                    console.log("hello world ", height)
                    return height * 2
            }
        }

        Rectangle {
            x: 100; y: 120; z: -1 // z-index can be used to set depth
            height: 100
            width: 200
            color: "orange"
        }

    }
}
