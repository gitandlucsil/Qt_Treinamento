import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Exemplo 5")

    Item{
        anchors.centerIn: parent
        width: 400
        height: 400

        Rectangle{
            anchors.fill: parent
            color: "beige"
            border.color: "black"
        }

        Rectangle{
            x: 0
            y: 10
            height: 50
            width: 50
            color: "magenta"
        }

        Rectangle{
            x: 60
            y: 10
            height: 50
            width: 50
            color: "salmon"
        }

        Rectangle{
            x: 120
            y: 10
            height: 50
            width: 50
            color: "darkgray"
        }

        Rectangle{
            x: 180
            y: 10
            height: 50
            width: 50
            color: "gray"
        }

        MouseArea{
            anchors.fill: parent

            onClicked: {
                console.log("OLA POVÃO!")
            }
        }
    }
}
