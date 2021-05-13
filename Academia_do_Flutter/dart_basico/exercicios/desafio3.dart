//?Programa que leia dois números e exiba a soma entre eles

import 'dart:io';
void main (){
print("Por favor, digite o primeiro número");
dynamic primeiroNumero = stdin.readLineSync();
print("Por favor, digite o segundo número");
dynamic segundoNumero = stdin.readLineSync();

int somaUM = int.parse(primeiroNumero);
int somaDois = int.parse(segundoNumero);

print("Média dos resultados obtidos, bom dia");
print((somaUM +somaDois)/2);

print("-------------------------------------------------------");
print("-------------------------------------------------------");
//////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////
//Esse transforma Str -> Inteiros
int one =  int.parse("1");
print(one == 1);

String treco = "1236";
int mudaP = int.parse(treco);
print(mudaP);

print("-------------------------------------------------------");
///////////////////////////////////////////////////////////////
// Esse transforma Str -> double/float
double two = double.parse("3.1415");
print(two == 3.1415);

String numQuebradinho = "2.7";
double assimilador = double.parse(numQuebradinho);
print(numQuebradinho);
print("-------------------------------------------------------");
//////////////////////////////////////////////////////////////////
///Esse Transforma Int -> Str
String oneAsString = 1.toString();
print(oneAsString);

int inteiro = 45;
String convertido = inteiro.toString();
print(convertido);
print("-------------------------------------------------------");
//////////////////////////////////////////////////////////////////
///Esse transforma Double em Str
String piEmEscrito = 3.14159265358.toString();
print(piEmEscrito == "3.14159265358");

double frido = 14.9;
String mestreFrido = frido.toString();
print(mestreFrido);

print("-------------------------------------------------------");
//////////////////////////////////////////////////////////////////
}


//Operadores matemáticos do Flutter