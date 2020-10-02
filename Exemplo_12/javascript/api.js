function buscarPiada(url, callback){
    var xhr = new XMLHttpRequest()
    xhr.onreadystatechange = function(){
        if(xhr.readyState === XMLHttpRequest.DONE){
            if(xhr.status === 200){
                callback(xhr.responseText.toString())
            }else{
                callback(null)
            }
        }
    }
    xhr.open("GET", url)
    xhr.send()
}
