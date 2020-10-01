import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Exemplo 7")

//    Rectangle{
//        id: rectId
//        width: 200
//        height: 200
//        color: "red"
//        signal saudar(string message) //Declaracao de sinal
//        onSaudar: {
//            console.log("[SIGNAL]")
//        }

//        function mSaudacao(mMessage){
//            console.log("[SLOT]: E ai: "+mMessage)
//        }

//        MouseArea{
//            anchors.fill: parent
//            onClicked: {
//                rectId.saudar("CACHORRADA")
//                console.log("mouse area clicked")
//            }
//        }

//        Component.onCompleted: {
//            saudar.connect(mSaudacao)
//        }
//    }
    Notificador{
        id: notifierId
        target: receiverId
    }

    Receptor{
        id: receiverId
        anchors.right: parent.right
    }

//    Component.onCompleted: {
//        notifierId.notify.connect(receiverId.receiveInfo)
//    }
}
