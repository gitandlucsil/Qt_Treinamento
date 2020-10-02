import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 1.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Exemplo 11")

    property int count: 1
    property var addSmaai: {"productname":"SMAAI","productversion":1}

    ListView{
        id: mListViewId
        anchors.fill: parent
        model: mListModelId
        delegate: delegateId
        headerPositioning: ListView.OverlayHeader

        header: RowLayout{
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 20
            height: 100
            z: 2
            layoutDirection: Qt.LeftToRight

            MButton{
                rectColor: "red"
                mText: "Append"

                onMPressed: {
                    console.log("onPresed")
                    count++
                    addSmaai.productversion++
                    mListModelId.append(addSmaai)
                    //mListModelId.append(({"productname":"SMAAI","productversion":count}))
                }

                onMPressedChanged: {
                    console.log("onPressedChanged")
                }

                onMReleased: {
                    console.log("onRelesead")
                }
            }

            MButton{
                rectColor: "pink"
                mText: "Insert"

                onMPressed: {
                    console.log("onPresed")
                    addSmaai.productversion++
                    count++
                    mListModelId.insert(0, addSmaai)
                }

                onMPressedChanged: {
                    console.log("onPressedChanged")
                }

                onMReleased: {
                    console.log("onRelesead")
                }
            }

            MButton{
                rectColor: "dodgerblue"
                mText: "Move"

                onMPressed: {
                    console.log("onPresed")
                    mListModelId.move(0, count-1, 1)
                }

                onMPressedChanged: {
                    console.log("onPressedChanged")
                }

                onMReleased: {
                    console.log("onRelesead")
                }
            }

            MButton{
                rectColor: "yellowgreen"
                mText: "Set"

                onMPressed: {
                    console.log("onPresed")
                    //addSmaai.productname = ""
                    //addSmaai.productversion = "1"
                    mListModelId.set(0, {"productname":"Ambientte N Pro","productversion":"666"})
                }

                onMPressedChanged: {
                    console.log("onPressedChanged")
                }

                onMReleased: {
                    console.log("onRelesead")
                }
            }

            MButton{
                rectColor: "magenta"
                mText: "Remove"

                onMPressed: {
                    console.log("onPresed")
                    if(mListModelId.count > 0){
                        mListModelId.remove(count-1)
                    }
                }

                onMPressedChanged: {
                    console.log("onPressedChanged")
                }

                onMReleased: {
                    console.log("onRelesead")
                }
            }

            MButton{
                rectColor: "indigo"
                mText: "Clear"

                onMPressed: {
                    console.log("onPresed")
                    mListModelId.clear()
                }

                onMPressedChanged: {
                    console.log("onPressedChanged")
                }

                onMReleased: {
                    console.log("onRelesead")
                }
            }
        }
    }

    ListModel{
        id: mListModelId
        ListElement {
            productname: "SMAAI"
            productversion: 1
        }
    }

    Component.onCompleted: {
        console.log(mListModelId.get(0).productname+" "+mListModelId.get(0).productversion)
    }

    Component{
        id: delegateId
        Rectangle {
            width: parent.width
            height: 50
            color: "yellow"
            radius: 20
            Text{
                id: textId
                anchors.centerIn: parent
                font.pixelSize: 18
                text: productname+" "+productversion
            }

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("Index: "+index)
                    console.log("Productname: "+productname)
                    console.log("Productversion: "+productversion)
                }
            }
        }
    }
}
