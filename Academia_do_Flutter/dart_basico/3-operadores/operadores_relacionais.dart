void main(){
// Você sabia que existem operador4es, que agumentam ainda mais a lógica contida dentro de um programa?
//São chamados de operadores relacionais
//*|| > (maior)| < (menor)| == (igual)| != (diferente)| >= (maior-igual)| <= (menor-igual)||||

double flutuante = 78.73;
int idade = 30;
String sexo = "masculino";
String nome = "Heitor";

if(idade == 30){
  print("Condição atribuida, idade é igual a 30");
  }
if (idade < 40){
  print("Nem chegou na meia idade");
  }
if (sexo == idade){
  print("isso é impossível, sabe, o programa vai fazer a comparação, mas o retorno será False");
  }
//Ele é espertinho, mais que o Python nesse quesito, quando ele tenta comparar um int com um double, ele converte o double em int e vice-versa  
if (idade == 30.0){
  print("comparação de 30, bem sucedida");
  }
if (flutuante != idade){
  print("flutuantes funcionam também para comparar com inteiros");
  print("Também comparam variáveis de classificações diferentes");
  }

if (idade >= 18){
  print("Você está maior de idade");
  }
if (nome != "heitor"){
 print("mudanças de caracter alteram no resultado obtido, ai fica ao meu cargo resolver este problema");
  }
}