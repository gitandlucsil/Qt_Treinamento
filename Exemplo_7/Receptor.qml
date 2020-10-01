import QtQuick 2.14

Item {

    function receiveInfo(count){
        receiverTextId.text = count
        console.log("Receptor recebeu o numero "+count)
    }
    width: receiverRectId.width
    height: receiverRectId.height

    Rectangle{
        id: receiverRectId
        width: 200
        height: 200
        color: "yellowgreen"

        Text{
            anchors.centerIn: parent
            font.pixelSize: 30
            id: receiverTextId
            text: "0"

        }
    }
}
