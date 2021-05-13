void main(){
  //! Estou vendo os principais 
  List <int> numerosNovos = [0,1,2,3,4,5];
  print(numerosNovos);

  print("O primeiro número dentro de numerosNovos é: ${numerosNovos.first}");  ///Seleciona o primeiro número da sequência
  
  print("O ultimo número dentro de numerosNovos é: ${numerosNovos.last}");   ///O último número da sequencia é utilizado

  ///Gerando um array pelo uso de um loop
  
  List <int>  valores = List.generate(10, (index) => index*10);
  print("gerei os seguintes valores: $valores, usando um List.generate");

  ///*Esse recursos pode ser usado para fazer varias customizações, como:
  var parUm = valores.firstWhere((v) => v%2 == 0); ///Uma variável x analisar os valores da lista e recolher o primeiro par
  print("Dentre $valores, primeiro número par é $parUm");

  List agregado =  [];
  agregado.add(numerosNovos);
  print(agregado);
  agregado.add(valores);
  print(agregado);
}
