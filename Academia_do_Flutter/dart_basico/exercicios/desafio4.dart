//Crie um programa que receba uma senha imutável de uma pessoa e seu nome, e exiba no final.]
import 'dart:io';
void main (){
  print("digite abaixo a senha que você deseja anexar. ");
dynamic recebeSenha = stdin.readLineSync();
print("Digite o seu nome");
dynamic recebeNome = stdin.readLineSync();

final nome = recebeNome;
final senha = recebeSenha;
const senhaMestre = "1296";
const nomeMestre = "heitor";

print("-------------------------------------");
 print("O id mestre é heitor e a senha 1296");
print(nome == nomeMestre);
print(senha == senhaMestre);



}