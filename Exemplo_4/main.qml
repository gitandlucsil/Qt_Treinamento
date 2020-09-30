import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Exemplo 4")

    property string mCartoonChar: "Macaco Loco"
    property string mSourceChar: "macaco-loco.jpg"

    onMCartoonCharChanged: {
        console.log("Novo nome do personagem é: "+mCartoonChar)
    }

    onMSourceCharChanged: {
        if(rectId.color == "#ff0000"){
            rectId.color = "pink"
        }else{
            rectId.color = "red"
        }
    }

    Rectangle{
        id: rectId
        anchors.fill: parent
        color: "red"

        Image {
            id: imgId
            anchors.centerIn: parent
            source: mSourceChar
        }

        Text{
            anchors.top: imgId.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            text: mCartoonChar
            font.pixelSize: 20
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                if(mCartoonChar === "Macaco Loco"){
                    mCartoonChar = "Mojo Jojo"
                    mSourceChar = "mojo-jojo.png"
                }else{
                    mCartoonChar = "Macaco Loco"
                    mSourceChar = "macaco-loco.jpg"
                }
            }
        }
    }
}
