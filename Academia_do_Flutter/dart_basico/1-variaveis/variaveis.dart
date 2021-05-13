void main (){

  var tudo = 123; //Quando se usa "var", digo que o programa deve reconhecer sozinho o tipo de atribuição que foi feita.
  var ValorDinamico; //!São variáveis cuja atribuição muda dinamicamente, e ela ´pode recebr tanto númers quanto caracteres
  //  MAs algumas funcionlidades mais específicas ficam indisponíveis.

  ValorDinamico = " ";
  ValorDinamico = 999;
  ValorDinamico = 123.456;


  num  idadeNUm = 23.15; //Variavel numérica elástica, aceitas valores quebradinhos e inteiros.
  
  int valor; //Variavel numérica iteira  que ainda não recebeu valor.
  int idade = 35; // Variável inteira com valor e tipo "pré definido"
  double quantia = 3.14159265358;
  valor = 100;

  String nome = "Heitor" + "Carobelli"; //Que horror, string está em maiúsculo... também não tem virgula como no python

  double testeSoma = quantia + idade;
  print(testeSoma);
}
