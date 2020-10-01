import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Exemplo 9")

    Flickable{
        width: parent.width
        height: parent.height
        contentHeight: mColumnId.implicitHeight

        Column{
            id: mColumnId
            anchors.fill: parent

            Rectangle {
                color: "red"
                width: parent.width
                height: 250

                Text {
                    text: qsTr("Elemento 1")
                    anchors.centerIn: parent
                    font.pixelSize: 26
                    color: "white"
                }

                Slider {
                    id: sliderId
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: 250
                    from: 0
                    to: 100
                    value: 0
                    snapMode: Slider.SnapAlways
                    onValueChanged: {
                        console.log(value.toFixed(2))
                    }
                }
            }

            Rectangle{
                color: "coral"
                width: parent.width
                height: 250

                Text {
                    id: txt1Id
                    text: qsTr("Elemento 2")
                    anchors.centerIn: parent
                    font.pixelSize: 26
                    color: "white"
                }

                Text {
                    text: sliderId.value.toFixed(2)
                    anchors.horizontalCenter: txt1Id.horizontalCenter
                    anchors.top: txt1Id.bottom
                    font.pixelSize: 26
                    color: "white"
                }

                ProgressBar{
                    id: pgBarId
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                    from: 0
                    to: 100
                    value: sliderId.value.toFixed(2)
                }
            }

            Rectangle{
                color: "cornflowerblue"
                width: parent.width
                height: 250

                Text {
                    id: txt3Id
                    text: qsTr("Elemento 3")
                    anchors.centerIn: parent
                    font.pixelSize: 26
                    color: "white"
                }

                Column{
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 5
                    CheckBox{
                        id: cb1Id
                        text: "1"
                        checked: false

                        onCheckStateChanged: {
                            if(checked){
                                sliderId.value += 25
                            }else{
                                sliderId.value -= 25
                            }
                            sw1Id.checked = checked
                        }
                    }

                    CheckBox{
                        id: cb2Id
                        text: "2"
                        checked: false

                        onCheckStateChanged: {
                            if(checked){
                                sliderId.value += 25
                            }else{
                                sliderId.value -= 25
                            }
                            sw2Id.checked = checked
                        }
                    }

                    CheckBox{
                        id: cb3Id
                        text: "3"
                        checked: false

                        onCheckStateChanged: {
                            if(checked){
                                sliderId.value += 25
                            }else{
                                sliderId.value -= 25
                            }
                            sw3Id.checked = checked
                        }
                    }

                    CheckBox{
                        id: cb4Id
                        text: "4"
                        checked: false

                        onCheckStateChanged: {
                            if(checked){
                                sliderId.value += 25
                            }else{
                                sliderId.value -= 25
                            }
                            sw4Id.checked = checked
                        }
                    }
                }

                Column{
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.rightMargin: 5

                    Switch{
                        id: sw1Id
                        text: "1"
                        checked: false

                        onCheckedChanged: {
                            cb1Id.checked = checked
                        }
                    }
                    Switch{
                        id: sw2Id
                        text: "2"
                        checked: false

                        onCheckedChanged: {
                            cb2Id.checked = checked
                        }
                    }

                    Switch{
                        id: sw3Id
                        text: "3"
                        checked: false

                        onCheckedChanged: {
                            cb3Id.checked = checked
                        }
                    }

                    Switch{
                        id: sw4Id
                        text: "4"
                        checked: false

                        onCheckedChanged: {
                            cb4Id.checked = checked
                        }
                    }

                }
            }
            Rectangle{
                color: "floralwhite"
                width: parent.width
                height: 250

                Text {
                    text: qsTr("Elemento 4")
                    anchors.centerIn: parent
                    font.pixelSize: 26
                    color: "black"
                }

                GroupBox{
                    anchors.left: parent.left
                    anchors.leftMargin: 5
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 10

                    Column{
                        RadioButton{
                            text:"Polistation 5"
                        }

                        RadioButton{
                            text:"100 pila"
                        }

                        RadioButton{
                            text:"Frotrografia do Raça Negra"
                        }
                    }
                }

                GroupBox{
                    anchors.right: parent.right
                    anchors.rightMargin: 5
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 10

                    Column{
                        CheckBox{
                            id: checkbox1
                            text:"Polistation 5"
                            onCheckedChanged: {
                                if(checked){
                                    checkbox2.checked = 0
                                    checkbox3.checked = 0
                                }
                            }
                        }

                        CheckBox{
                            id: checkbox2
                            text:"100 pila"
                            onCheckedChanged: {
                                if(checked){
                                    checkbox1.checked = 0
                                    checkbox3.checked = 0
                                }
                            }
                        }

                        CheckBox{
                            id: checkbox3
                            text:"Frotrografia do Raça Negra"
                            onCheckedChanged: {
                                if(checked){
                                    checkbox1.checked = 0
                                    checkbox2.checked = 0
                                }
                            }
                        }
                    }
                }
            }

            Rectangle{
                color: "gainsboro"
                width: parent.width
                height: 250

                SwipeView{
                    id: swipeViewId
                    anchors.fill: parent
                    currentIndex: pageIndicatorId.currentIndex

                    Rectangle{
                        id: rect1
                        color: "red"

                        Image{
                            id: imgId1
                            anchors.centerIn: parent
                            scale: 0.5
                            source: "cartman.png"

//                            MouseArea{
//                                anchors.fill: parent
//                                onClicked: {
//                                    swipeViewId.currentIndex = 1
//                                }
//                            }
                        }

                        Text{
                            anchors.left: imgId1.right
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: 20
                            color: "white"
                            text: "CARTMAN"
                        }
                    }

                    Rectangle{
                        id: rect2
                        color: "green"

                        Image{
                            id: imgId2
                            anchors.centerIn: parent
                            scale: 0.5
                            source: "kyle.png"

                        }

                        Text{
                            anchors.left: imgId2.right
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: 20
                            color: "white"
                            text: "KYLE"
                        }
                    }

                    Rectangle{
                        id: rect3
                        color: "blue"

                        Image{
                            id: imgId3
                            anchors.centerIn: parent
                            scale: 0.5
                            source: "stan.png"
                        }

                        Text{
                            anchors.left: imgId3.right
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: 20
                            color: "white"
                            text: "STAN"
                        }
                    }

                    Rectangle{
                        id: rect4
                        color: "orange"

                        Image{
                            id: imgId4
                            anchors.centerIn: parent
                            scale: 0.5
                            source: "kenny.png"
                        }

                        Text{
                            anchors.left: imgId4.right
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: 20
                            color: "white"
                            text: "KENNY"
                        }

                    }
                }

                PageIndicator{
                    id: pageIndicatorId
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    currentIndex: swipeViewId.currentIndex
                    interactive: true
                    count: swipeViewId.count
                }

            }
        }
    }
}

