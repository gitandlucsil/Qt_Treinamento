import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Exemplo 10")

    Page{
        id: pageId
        anchors.fill: parent

        header: Rectangle{
            width: parent.width
            height: 50
            color: "dodgerblue"

            Text{
                anchors.centerIn: parent
                color: "white"
                font.pixelSize: 30
                text: "Exemplo 10"
            }
        }

        SwipeView{
            id: swipeViewId
            anchors.fill: parent
            currentIndex: tabBarId.currentIndex

            Rectangle {
                color: "yellow"

                TextField{
                    id: textFieldId
                    anchors.centerIn: parent
                    width: 200
                    height: 30
                }

                Button{
                    anchors.top: textFieldId.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Captura"
                    flat: false
                    highlighted: true
                    anchors.margins: 5

                    onClicked: {
                        console.log(textFieldId.text)
                    }
                }
            }

            Rectangle {
                color: "green"

                SpinBox{
                    id: spinBoxId
                    anchors.centerIn: parent
                    from: 1
                    to: 100
                    stepSize: 2
                    editable: true
                }

                Button{
                    anchors.top: spinBoxId.bottom
                    anchors.topMargin: 5
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Captura"

                    onClicked: {
                        console.log(spinBoxId.value)
                    }
                }
            }

            Rectangle {
                color: "blue"

                Button{
                    anchors.centerIn: parent
                    text: "GOKU"

                    onClicked: {
                        dialogId.open()
                    }
                }
            }

            Rectangle{
                color: "pink"

                StackView{
                    id: stackViewId
                    anchors.fill: parent
                    initialItem: componentId1

                    Component{
                        id: componentId1
                        Rectangle{
                            color: "black"

                            Button{
                                anchors.centerIn: parent
                                text: "Galvão"

                                onClicked: {
                                    stackViewId.replace(componentId2, StackView.Immediate)
                                }
                            }
                        }
                    }

                    Component{
                        id: componentId2
                        Rectangle{
                            color: "gray"

                            Button{
                                anchors.centerIn: parent
                                text: "Fala Tino!"

                                onClicked: {
                                    stackViewId.replace(componentId1, StackView.Immediate)
                                }
                            }
                        }
                    }
                }
            }
        }

        footer: TabBar{
            id: tabBarId
            width: parent.width
            currentIndex: swipeViewId.currentIndex

            TabButton{
                text: "Primeiro"
            }

            TabButton{
                text: "Segundo"
            }

            TabButton{
                text: "Terceiro"
            }

            TabButton{
                text: "Quarto"
            }
        }
    }


    Dialog{
        id: dialogId
        width: 1
        height: 1
        modal: true
        anchors.centerIn: parent

        onAccepted: {
            console.log("Aceito")
        }

        onRejected: {
            console.log("Rejeitado")
        }

        Image{
            anchors.centerIn: parent
            scale: 0.08
            source: "goku.png"

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    dialogId.accept()
                }
            }
        }


    }
}
