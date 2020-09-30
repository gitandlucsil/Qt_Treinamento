import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Exemplo 3")

    Rectangle{
        id: redRectId
        width: 50
        height: width * 1.5 //Binding
        anchors.top: parent.top
        anchors.left: parent.left
        color: "#ff0000"
        border.color: "#000000"
        border.width: 2
        radius: 10

        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log("Clicou no retangulo vermelho")
            }
        }
    }

    Rectangle{
        id: greenRectId
        width: 50
        height: 50
        color: "#00ff00"
        border.color: "#000000"
        border.width: 2
        radius: 10
        anchors.bottom: parent.bottom
        anchors.left: parent.left

        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log("Clicou no retangulo verde")
                redRectId.width += 10 //Binding
            }
        }
    }

    Rectangle{
        id: blueRectId
        width: 50
        height: 50
        color: "#0000ff"
        border.color: "#000000"
        border.width: 2
        radius: 10
        anchors.bottom: parent.bottom
        anchors.left: greenRectId.right //Binding
        anchors.leftMargin: 20

        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log("Clicou no retangulo azul")
                redRectId.height = redRectId.width * 1.5
            }
        }
    }

    Rectangle{
        id: yellowRectId
        width: 50
        height: 50
        color: "yellow"
        border.color: "#000000"
        border.width: 2
        radius: 10
        anchors.bottom: parent.bottom
        anchors.left: blueRectId.right //Binding
        anchors.leftMargin: 20

        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log("Clicou no retangulo amarelo")
                redRectId.height = Qt.binding(function(){
                 return redRectId.width * 1.5
                }) //Binding
            }
        }
    }

}
