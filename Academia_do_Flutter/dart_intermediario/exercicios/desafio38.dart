import 'dart:io';
import 'dart:collection';

import 'ferramentas.dart';

void main (){
  int zero = 0;
  dynamic dividendo = 1;
  

SplayTreeSet aumentando = SplayTreeSet<int>();

List valores = [null];
  // for (var item in valores) {
  //   String temp = item;
  // }

try{
  for (var item in valores) {
    String temp = item;
  }
} on TypeError catch(e,s) {
  print("você cometeu um erro que envolve Null");
  print("Você atribuiu o valor Null a algo que recebe outro tipo, diferente de null");
  print(s);
}


catch (e,s){
  print("Você fez um erro");
}finally{
  print(muitasLinhas("O Resultado de: 'colocar null dentro de uma lista e mexer com isso'"));
}



}