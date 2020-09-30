import QtQuick 2.14

Item {
    property int mCount: 0
    width: notifierRectId.width
    height: notifierRectId.height
    signal notify(string count)
    Rectangle{
        id: notifierRectId
        width: 200
        height: 200
        color: "red"

        Text{
            anchors.centerIn: parent
            font.pixelSize: 20
            id: displayTextId
            text: mCount
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                mCount++
            }
        }
    }
}
