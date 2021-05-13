void main (){
  var str1 = "Heitor CArobelli|18|calouro|SP";
  var str2 = "rodrigo rahman,30,desenvolvedor,SP";
  var array1 = str1.split("|");
  var array2 = str2.split(",");
  print(array1);



  for ( var index = 0; index<array1.length; index++){
    print("${index} <-> ${array1[index]}");
  }
  for ( var x = 0; x<array1.length; x++){
    print("${x} <-> ${array2[x]}");
  }

}
