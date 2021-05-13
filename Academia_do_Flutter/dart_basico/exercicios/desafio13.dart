///Um algoritmo que leia o preço de um produto e mostre seu novo preço, com 5% de desconto

import "dart:io";

void main(){
  print("Digite o preço do seu produto");
  dynamic precinho = stdin.readLineSync();

  num gestor = double.tryParse(precinho) ?? 0;
  print(gestor);
  if (gestor == 0 || gestor<0){
    if (gestor < 0){
      print("A loja não paga para você levar, você que nos paga!");
   }
    print("Valor invalido");
 } else{
    print("aplicando um desconto de 5% no valor de ${precinho}\n---${(gestor*((100-5)/100))}---");
 }

 
}