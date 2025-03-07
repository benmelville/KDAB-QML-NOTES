import QtQuick

Window {
    width: 1000
    height: 1000
    visible: true

    Rectangle {
        x: 0
        width: 100; height: 100;
        color: "#ff0000"
    }
    Rectangle {
        x: 100
        width: 100; height: 100;
        color: Qt.rgba(0,1,0,1);
    }
    Rectangle {
        x: 200
        width: 100; height: 100;
        color: "blue"
    }

    Rectangle {
        x: 300
        width: 100; height: 100
        gradient: Gradient {
            GradientStop {
                position: 0.0; color: "green"
            }
            GradientStop {
                position: 0.5; color: "orange"
            }
            GradientStop {
                position: 1.0; color: "blue"
            }
    }


    }

}
