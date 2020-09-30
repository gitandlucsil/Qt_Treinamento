import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Exemplo 6")

    MButton{
        id: mButtonId1
        buttonText: "Botão 1"
        onButtonClicked: {
            console.log("main.qml: Clicou no "+buttonText)
        }
    }

    MButton{
        id: mButtonId2
        x: 100
        y: 0
        buttonText: "Botão 2"
        onButtonClicked: {
            console.log("main.qml: Clicou no "+buttonText)
        }
    }

}
