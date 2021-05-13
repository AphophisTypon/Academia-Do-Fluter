// Crie um programa que aja como um caixa eletrônico, no sentido de emitir cédulas de: 200,100,50,20,10,5,2 e 1 real. 


import 'dart:io';
import 'ferramentas.dart';

const Set cedulas = {200,100,50,20,10,5,2,1};


void main (){
  // int valorImputado = 33;
  //* int valorImputado = ferramentasRNG(1200);
  //Para testes, gera um numero de 0 a 1199
  int valorImputado = repeteImputInt("int");
  
  print("Ao sacar $valorImputado reais, você receberá as cédulas de:");

  for (var i = 0; i < cedulas.length; i++) {
    int temp = cedulas.elementAt(i) ;
    if (valorImputado~/temp > 0){
      int resultado = valorImputado~/temp;
      valorImputado -= (temp)*(valorImputado~/temp);
      print("Receberá ${resultado} cedulas de ${cedulas.elementAt(i)} reais");
    }
  } 
}

///E se eu colocasse o print na frente?????? Funcionou Heitor, tirou um monte de código inutil e desnecessário
