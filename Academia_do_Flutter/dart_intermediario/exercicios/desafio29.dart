// Função para votação

import "ferramentas.dart";
import 'dart:io';
String tentarVotar (String nome, int idadeImputada){
  
  dynamic ano = DateTime.now().toString();
  ano = int.parse(ano.substring(0,4));
  final idadeMaxima = (122 + (2.7*ano)/1000);
  
  if (estaDentroDeInt(idadeImputada, 16, idadeMaxima)){
    print("Seus valores são válidos");
    if (idadeImputada >= 18){
      return("${nome}, como você tem ${idadeImputada}, é obrigado a votar");
    }else{
      return("${nome} você ainda tem ${idadeImputada} ainda lhe é opcional a votação");
    }
  } else{
      return("${nome}, seus dados não são adequados");
  } 
}

void main (){
  print("Digite o seu nome:");
  String nome = stdin.readLineSync().toString();


  print("\nDigite a sua idade ");
  do{
    dynamic idadeImputada = stdin.readLineSync();
    if (int.tryParse(idadeImputada) != null){
      idadeImputada = int.parse(idadeImputada);
      print(tentarVotar(nome, idadeImputada));
      break; 
  } else{
    print("Alguma dúvida?\nSomente use os valores decimais pra representar sua idade");
  }
  }while(true);
  
  
  

}