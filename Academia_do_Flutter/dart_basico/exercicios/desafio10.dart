//!Faça um programa que exiba a tabuada de um número, até dez vezes

import "dart:io";
void main(){
  print("Digite o valor a ser multiplicado,, mas ele deve ser positivo e maior que zero");
  dynamic base = stdin.readLineSync();
  
  double baseNum = double.tryParse(base) ?? 0;

  if (baseNum != 0 && baseNum > 0 ){
    print("-="*12);
    print("$base x 1 = ${baseNum*1}");
    print("$base x 2 = ${baseNum*2}");
    print("$base x 3 = ${baseNum*3}");
    print("$base x 4 = ${baseNum*4}");
    print("$base x 5 = ${baseNum*5}");
    print("$base x 6 = ${baseNum*6}");
    print("$base x 7 = ${baseNum*7}");
    print("$base x 8 = ${baseNum*8}");
    print("$base x 9 = ${baseNum*9}");
    print("$base x 10 = ${baseNum*10}");
    print("-="*12);
  }else{
    print("O valor é invalido. Bom dia");
  }
}

