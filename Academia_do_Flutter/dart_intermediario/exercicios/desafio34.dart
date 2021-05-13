// Crie um programa que sabe determinar se alguma palavra é ou não é um palíndromo

import "dart:io";

void main (){
  print("Eu faço palindromos, escreva uma palvra para eu ver se ela é um palindromo");
  String palavra = stdin.readLineSync().toString();
  // String palavra = "bob ama bob";
  String palindromo = "";
  for (var i = (palavra.length) -1; i >-1 ; i--) {
    // print(palavra[i]);
    palindromo = ("$palindromo"+"${palavra[i]}");
  }
  print("A palavra base ${palavra}, invertida fica como $palindromo");
  if(palavra == palindromo){
    print("palavra é um palindromo");  
  }else{
    print(" A palavra $palavra não é um palindromo");
  }
}