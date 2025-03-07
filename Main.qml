import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("hello world")

    Image {
        x: 0; y: 0; z: -1
        source: "resources/images/jeep-backsplash.jpg"
        width: sourceSize.width * 0.25 // sourceSize is the size of the image
        height: sourceSize.height * 0.25
        Component.onCompleted: console.log(width, height, sourceSize)
    }

    // Images are loaded asynchronously. We setup the image element and then in the background we load the image
    Image {
        id: image
        width: 1000; height: 1000
        source: "https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/stars/young-stars/Hubble_HOPS150_HOPS153_potw2502a.jpg"
        fillMode: Image.PreserveAspectFit

        Rectangle {
            color: "green"
            x: 0; y: 950
            height: 50
            width: 1000 * image.progress
            visible: image.progress !== 1
        }

        onStatusChanged: console.log(sourceSize)
    }


}
