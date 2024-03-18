class Encryptor{

  String change(String value, int key){

    int newKey = key%26;

    List<String> charArray =[];

    for(int i=0;i<value.length;i++){ 
     int pos = value.codeUnitAt(i)+newKey;

     if(pos <122){
        charArray.add(String.fromCharCode(pos));
     }
     else{
        charArray.add(String.fromCharCode(96+pos%122));
     }
    }
    return charArray.join();
  }
}

void main(){

//  Encryptor.result();
 Encryptor res = Encryptor();

      String value = "Hello";
      int key =4;

    print(res.change(value, key));
}
