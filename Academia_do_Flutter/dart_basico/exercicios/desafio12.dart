///Um programa que leia a largura e a altura de uma parede em metros, calcule a sua área e a quantidade de latas de tinta necessárias para pintá-la. 
///Sendo, que cada lata de tinta possui 2 L e aproveitamento deve ser 100% do conteúdo.

import "dart:math";
import"dart:io";

void main(){
  ///(larguraXaltura)/2 = çatas de tinta
  print("Você precisa pintar coisas?");
  print("");
  print("Digite a altura da superfície em metros");
  dynamic pegaAltura = stdin.readLineSync();
  print("Digite a largura da superfície em metros");
    dynamic pegaLargura = stdin.readLineSync();

  dynamic altura = double.tryParse(pegaAltura) ?? 0;
  dynamic largura = double.tryParse(pegaLargura) ?? 0;

  double valor = (altura*largura)/2;
  print("-=-="*12);
  
  print("Você va precisar de ${valor.ceil().round()} latas de tinta");
}