import 'dart:collection';

void main (){
  var numeros = List.generate(10, (index) => index*2) ;
  print(numeros);

  for (var i=0; i < numeros.length; i++){
    print(i);
  }

  for(var numero in numeros){
    print(numero);
  }

//Convencional ^           
//                        ||
//* !!!SUPER INVOVADOR!!! \/

//Não precisa construir um negócio grande e chato, pois com o comando "forEach", eu trabalho com cada elemento da lista.


print("não há grandes diferenças entre os métodos");
print("Contemple: uma lista 'dinamica': numeros.forEach((element) =>print(element)); ");

numeros.forEach((element) =>print(element)); 

print("Ela funciona!");

//*Vou juntar listas em uma unica lista
var arrayHeterogeneo = [[3,7,4],[9,3,6]]; 

var arrayHomogeneo = arrayHeterogeneo.expand((element) => element); //Nao consigo fazer contas diretamente, mas consigo vazer umas maracutaias

print(arrayHeterogeneo);
print(arrayHomogeneo);

arrayHomogeneo.forEach((element) => print(element+1000));

//*Vou juntar transformar os elementos da minha lista
print("MAP");
var lista = [1,2,3,4,5,6,7];

var listanova = lista.map((e) => "$e -Rodrigo").toList();
print(listanova);

//? Iterable != List

//*Buscar elementos dentro da lista

List <String> usandoAny = ["Rodrigo","Jaimano","Jepeto","Joaquim"];
if (usandoAny.any((element) => element == "Rodrigo")){
    print("Acho o Rodriguinho");
}

//*Trabalha em cima de todos os elementos de uma lista 
if (usandoAny.every((element) => element.contains("o"))){
  print("Todos os elementos tem o");
  }else{
    print("Alguem não temm 'o' ");
  }

//Where
//*Buscando dentro de uma string
var listaBusca = usandoAny.where((element) => element == "Rodrigo"); //REcebe o valor que eu busco, se ele existir dentro da lista. se não encontar nada, fica vazio
print(listaBusca);

 

///*Coisas que aprendi, sobre as listas intermediarias
///!forEach ->Trabalha em cima de cada elemento de uma lista || ?
///!expand -> engloba listas separadas e as transforman em listas únicas || ?
///!map -> transforma todos os elementos da lista || Iterable
///tem que dar ".toList()" no final, para ele transformar os elementos em valores de listas, senão: fica como Iterable
///!any -> analisa a lista, em busca do elemento específicado || bool
///!every -> busca em todos elemenos da lista, se todos apresentam o parametro: retorna true || bool
///!where -> Busca por algum parametro, contido dentro de uma lista, retorna o valor se o encontrar, do contrário "vazio" || Iterable
///!fold -> Transforma elementos de listas em partes de sentenças matemáticas || num
///!sort() -> Usando dois valores de referencia, retorna a lista ordenada segundo um parametro|| *List
///Buscar alguma coisa na lista


//* Esses de cima são bons para fazer a analises de mão única, senão é mehir usar um for convencional



}