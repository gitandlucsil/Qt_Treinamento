import QtQuick 2.14

Item {
    property int mCount: 0
    property Receptor target: null
    width: notifierRectId.width
    height: notifierRectId.height
    signal notify(string count)
    
//    onTargetChanged: {
//        notify.connect(target.receiveInfo)
//    }

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
                notify(mCount)
                target.receiveInfo(mCount)
            }
        }
    }
}
