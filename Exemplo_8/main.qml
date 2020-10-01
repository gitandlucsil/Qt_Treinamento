import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 1.12

Window {
    width: 1366
    height: 768
    visible: true
    title: qsTr("Exemplo 8")

    Rectangle{
        anchors.fill: parent
        width: 1366
        height: 768
        border.color: "black"
        color: "beige"

        GridLayout{
            anchors.fill: parent
            columns: 3
            rows: 3
            columnSpacing: 0
            rowSpacing: 0

            Rectangle{
                id: leftTopRectId
                width: 100
                height: 100
                color: "red"
            }

            Rectangle{
                id: centerTopRectId
                width: 100
                height: 100
                color: "darkred"
            }

            Rectangle{
                id: rigthTopRectId
                width: 100
                height: 100
                color: "rosybrown"
            }

            Rectangle{
                id: leftCenterRectId
                width: 100
                height: 100
                color: "blue"
            }

            Rectangle{
                id: centerCenterRectId
                width: 100
                height: 100
                color: "darkblue"
            }

            Rectangle{
                id: rigthCenterRectId
                width: 100
                height: 100
                color: "#4CBFC7"
            }

            Rectangle{
                id: leftBottomRectId
                width: 100
                height: 100
                color: "green"
            }

            Rectangle{
                id: centerBottomRectId
                width: 100
                height: 100
                color: "darkgreen"
            }

            Rectangle{
                id: rigthBottomRectId
                width: 100
                height: 100
                color: "yellowgreen"
            }
        }
    }
}
