import QtQuick 2.14
Item {
    id: buttonItem
    property alias buttonText: buttonTextId.text
    signal buttonClicked
    Rectangle{
        width: buttonTextId.implicitWidth + 20
        height: buttonTextId.implicitHeight + 20
        color: "red"
        border.color: "yellowgreen"
        border.width: 2

        MouseArea{
            anchors.fill: parent

            onClicked: {
                console.log("Clicou no "+buttonTextId.text)
                buttonClicked()
            }

            Text{
                id: buttonTextId
                text: buttonText
                anchors.centerIn: parent
            }
        }
    }
}
