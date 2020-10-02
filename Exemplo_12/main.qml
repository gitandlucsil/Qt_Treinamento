import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import "javascript/api.js" as API

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Exemplo 12")

//    function buscarPiada(url, callback){
//        var xhr = new XMLHttpRequest()
//        xhr.onreadystatechange = function(){
//            if(xhr.readyState === XMLHttpRequest.DONE){
//                if(xhr.status === 200){
//                    callback(xhr.responseText.toString())
//                }else{
//                    callback(null)
//                }
//            }
//        }
//        xhr.open("GET", url)
//        xhr.send()
//    }

    ColumnLayout{
        anchors.fill: parent
        spacing: 0

        ListView{
            id: mListViewId
            model: mListModelId
            delegate: delegatedId
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        Button{
            id: mButtonId
            text: "Buscar"
            Layout.fillWidth: true

            onClicked: {
                console.log("Clicked")
                API.buscarPiada("http://api.icndb.com/jokes/random", json => {
                                if(json){
                                    let json_obj = JSON.parse(json)
                                    mListModelId.append({"joke":json_obj.value.joke})
                                }
                            })
            }
        }
    }

    ListModel{
        id: mListModelId
    }

    Component{
        id: delegatedId

        Rectangle{
            id: rectId
            width: parent.width
            height: textId.implicitHeight + 30
            color: "beige"
            border.color: "dodgerblue"
            radius: 5

            Text{
                id: textId
                width: parent.width
                height: parent.height
                anchors.centerIn: parent
                font.pixelSize: 15
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
                text: joke
            }
        }
    }
}
