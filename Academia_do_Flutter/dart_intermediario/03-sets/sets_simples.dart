//Aula 17 - 03/05/21
// https://academiadoflutter.club.hotmart.com/lesson/Z7282bB64N/sets

//! elementAt(*indice)
//Desse jeito, ele procura o valor no indice do set
//! difference()
///Uma forma de verificar os valores dento do Set, ele realça os valores do primeiro Set, que não existem no segundo
//!intersection(); 
//Quais os valores que repetem entre os sets
//!union(); Set1 +Set2 => Set1,2
//Unem os sets, mas sem ocorrencia de repetição de valores 
//!lookup(*elemento especificado );
//Retorna o elemento especificado, se ele existir no set; do contrário tem como retorno nulo

void main (){
  //Duas formas de invocar um Set:
  Set <int> meuSet = Set<int>();
  Set outroSet = {};
  ///////////////////////////////////////////////////////////////////////////////////////
  
  //Regras dos SETS
  //
  //!regra Nº1: Não admite valores repetidos
  meuSet.add(1);
  meuSet.add(1);
  meuSet.add(4);
  meuSet.add(1);
  meuSet.add(3);
  meuSet.add(1);
  meuSet.add(10);
  meuSet.add(1);
  meuSet.add(9);
  meuSet.add(1);
  meuSet.add(6);
  meuSet.add(1);

  print(meuSet);
  // >>> {1, 4, 3, 10, 9, 6}

  //Regra Nº2
  //!Sets admitem valores nulos
  outroSet.add(null);
  print(outroSet); 

  //Eles aguwntam alguns tratamentos de listas, como:
  meuSet.forEach((element) => print(element));
  print("O Set 'meuSet' ${meuSet.contains(10) ? "contem o valor 10": "não tem 10"}");

//Mas outras coisas mudam:
// meuSet.insert -> não exite

//O tratamento do for também muda

for (var i = 0; i < meuSet.length; i++) {
  // print(meuSet[i]); -> não existe
  print(meuSet.elementAt(i)); //Desse jeito que se usa os loops nestes elementos
}

Set <int> numeros1 = {};
numeros1.add(1);
numeros1.add(2);
numeros1.add(6);
Set <int> numeros2 = {};
numeros2.add(0);
numeros2.add(7);
numeros2.add(1);
numeros2.add(15);

print(numeros1.difference(numeros2)); //Uma forma de verificar os valores dento do Set, ele verifica se a diferença de valores do primeiro
//Realça os valores do primeiro Set, que não existem no segundo
print(numeros1.union(numeros2)); //Quais os valores unicos de cada set

print(numeros1.intersection(numeros2)); //Quais os valores que repetem entre os Sets

print(numeros1.lookup(1)); // Retorna o elemento se ele existir no set
print(numeros1.lookup(9)); //Do contrário, será um null
}