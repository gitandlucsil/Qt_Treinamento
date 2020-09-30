import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property string mString: "http://www.inobram.com.br"
    property int mInt: 734
    property bool mBool: true
    property double mDouble: 43.2
    property url mUrl: "http://www.inobram.com.br"
    property var aNumber: 12.87
    property var aBool: false
    property var aString: String("e ai")
    property var aColor: Qt.rgba(0.2, 0.3, 0.4, 0.5)
    property var aRect: Qt.rect(0, 0, 200, 200)
    property var aPoint: Qt.point(1, 2)
    property var anArray: [1, 2, 3, "four", "five", () => {return "six"}]
    property var anObject: {"foo": 10, "bar": 20}
    property date mDate: "2020-09-03 14:20:00"

    Rectangle{
        width: aRect.width
        height: aRect.height
        anchors.centerIn: parent
        color: aColor

        Text {
            anchors.centerIn: parent
            text: mString + mInt
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                if(mBool){
                    console.log("true")
                    console.log(mDouble)
                    console.log(mUrl)
                    aNumber = "JUNINHO"
                    console.log(aNumber)
                }else{
                    console.log("false")
                }
                for(let i = 0; i < anArray.length; i++){
                    if (i === 5){
                        console.log(anArray[i]())
                    } else{
                        console.log(anArray[i])
                    }
                }
                if(mUrl == mString){
                    console.log("e igual")
                }else{
                    console.log("nao e igual")
                }
                console.log(anObject.foo)
                console.log(anObject.bar)
                console.log(JSON.stringify(anObject))
                console.log(anObject.hasOwnProperty("foo"))
                console.log(anObject.hasOwnProperty("fo"))
                anArray.forEach(function(value, index){
                        console.log(value+" "+index)
                        })
                console.log(mDate.getDate())
                console.log(mDate.getDay())
                console.log(mDate.getFullYear())
                console.log(mDate.toString())
                console.log(mDate.toJSON())
                console.log(mDate.toDateString())
                console.log(mDate.toLocaleString())
                console.log(mDate.toLocaleDateString())
            }
        }
    }
}
