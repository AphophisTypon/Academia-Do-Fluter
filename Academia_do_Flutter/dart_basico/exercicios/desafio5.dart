//Faça um programa que leia um número Inteiro e mostre na tela o seu sucesso e seu antecessor. 
import 'dart:io';
void main() {
print("Digite o número, para que se exiba seu antecessor e o seu sucessor");
dynamic referencia = stdin.readLineSync();

final numReferencia = int.parse(referencia);

final velho = numReferencia-1;
final novo = numReferencia+1;

print("Os numeros são:");
print("$velho - $numReferencia - $novo");

}