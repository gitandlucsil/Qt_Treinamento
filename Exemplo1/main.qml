import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Exemplo 1")

    property string mText: "OLA CANALHAS!"

    Row{
        id: rowId
        anchors.centerIn: parent
        spacing:10

        Rectangle{
            id: redRectId
            width: 150
            height: 150
            color: "#ff0000"
            border.color: "#000000"
            border.width: 2
            radius: 10

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("Clicou no retangulo vermelho")
                    mText = "Vermelho"
                    pinkRectId.color = "#ff0000"
                }
            }
        }

        Rectangle{
            id: greenRectId
            width: 150
            height: 150
            color: "#00ff00"
            border.color: "#000000"
            border.width: 2
            radius: 10

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("Clicou no retangulo verde")
                    mText = "Verde"
                    pinkRectId.color = "#00ff00"
                }
            }
        }

        Rectangle{
            id: blueRectId
            width: 150
            height: 150
            color: "#0000ff"
            border.color: "#000000"
            border.width: 2
            radius: 10

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("Clicou no retangulo azul")
                    mText = "Azul"
                    pinkRectId.color = "#0000ff"
                }
            }
        }

       Rectangle{
           id: pinkRectId
           width: 150
           height: 150
           color: "pink"
           radius: 100

           MouseArea{
               anchors.fill: parent
               onClicked: {
                   console.log("Clicou no retangulo rosa")
                   pinkTextId.text = "b-b-b-break"
                   pinkRectId.color = "pink"
               }
           }

           Text {
               id: pinkTextId
               anchors.centerIn: parent
               text: mText
           }
       }
    }
}
