//Um programa que leias duas notas de um aluno, some-as e calcule a sua média.
import 'dart:io';

void main(){
  dynamic RefUm = stdin.readLineSync();
  dynamic RefTwo = stdin.readLineSync();

  num numeroUm = int.parse(RefUm);
  num numeroDois = int.parse(RefTwo);

  final reacao = (numeroUm+numeroDois)/2;

  print("O valor atribuido é $reacao");

}