import QtQuick 2.14

Item {
    id: rootId
    property alias rectColor: rectId.color
    property alias mText: mTextId.text

    signal mPressed()
    signal mPressedChanged()
    signal mReleased()

    width: rectId.width
    height: rectId.height

    Rectangle {
        id: rectId
        width: 75
        height: 75
        radius: 100

        Text {
            id: mTextId
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent

            onPressed: {
                mPressed()
            }

            onPressedChanged: {
                mPressedChanged()
            }

            onReleased: {
                mReleased()
            }
        }
    }
}
