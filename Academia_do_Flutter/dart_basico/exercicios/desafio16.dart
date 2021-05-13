// Construa uma lista com 10 nomes.
// Imprima na tela cada nome com a frase: Sejá bem vindo NOME


//! Valores definidos como: 
// var numero;
//! recebem a atribuição como nulo, até que sejam efetivamente utilizados.


void main (){
  List <String> nomes = ["Amelia","Ronaldo","Joaquim","Letícia","Rodrigo","Karina","Morgana","Alexandre","Geraldo","Maria"];
  for (var index=0;index<10;index++) {
    print("Seja bem vindo: ${nomes[index]}");
  } 
}