//Criei um algoritmo que leia um número e mostre o seu dobro, triplo e raiz quadrada
import 'dart:io';
import "dart:math";
void main (){
  print("Digite o número, para eu deduzir seu dobro, trilo e raiz quadrada");
  dynamic inicio = stdin.readLineSync();

  double referencia = double.parse(inicio);

  num dobroRef = referencia*2;
  num trioeRef = referencia*3;
  num raxRef = referencia;

  //double teta = 4*4;
  //* Lembança do Papai : )

  print("Os valores obitidos são:");
  print(dobroRef);
  print(trioeRef);
  print(sqrt(raxRef));
}