void main (){
  Set <dynamic>lennyFace = new Set();
  List <dynamic> linguicona = [];
  Map primeiraVez = new Map ();
  primeiraVez.putIfAbsent("nome", () => "Metamorfose Ambulante");
  primeiraVez.putIfAbsent("genero", () => "homem");
  
  print(primeiraVez);

  primeiraVez.update("genero", (sexo) => "Mulher"); //*Para modificar o status de uma parte já existente do mapa
  // primeiraVez.update("naoFunciona", (sexo) => "Falha"); //*Teria que ter a opcão "naoFunciona", para ele atualizar
  
  print(primeiraVez);

  primeiraVez.update("composicao", (material) => "Carbono", ifAbsent: () => "Carbono");//Se ele não encontrar a chave evocada, ele adiciona ela e seu componente "Na marra"

  print(primeiraVez);

  var retornaValor = primeiraVez["nome"];//Eu chamo a chave de dentro, como se eu pesquisasse: "pelo nome do cara dentro dessa coisa "
  print("-=-="*12);
  print(retornaValor);
  print("É composto por ${primeiraVez["composicao"]}");

  //Mas consigo evocar um forEach
  primeiraVez.forEach((key, value) => print("$key :" + "$value"));
  
  ///!Não lida bem com loops do tipo "For"
  // for (var item in primeiraVez) {
  //   print(item);
  // }

  for (var i in primeiraVez.keys) {
    print(i);    
  }

  for (var x in primeiraVez.values) {
    print(x);    
  }

  //É possivel rodar por todos os valores usando for, mas não é muito util, pois o Map torna isso muito mais facil
  //E tambem já compreende o conjunto "chave"-"valor", diferente do For convencional, que somente trata um tipo por vez

  print("\n Criando um map por meio de um map já existente");

  var novoMap = primeiraVez.map((chave, valor){

    return MapEntry(chave, valor.toUpperCase());
  });
  print("\n $novoMap");

  print("Mapa preguiçoso");
  var maisUmMap = {"Status" : "Ahhhhhhhhhhhhhhhhhhhhhhh\n 'suspira'\n Ahhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh"};
  var encheLinguica = {"Prenchimento" : "Tédio"};
  print(maisUmMap);
  print(encheLinguica);

  maisUmMap.addAll(encheLinguica); //É possivel colocar o conteudo de um map dentro de outro

print(maisUmMap);
  print(encheLinguica);
lennyFace.add(maisUmMap);
linguicona.add(maisUmMap);
print("Tentei colocar u Map dentro de um Set:\n ${lennyFace}");
linguicona[0].putIfAbsent("genero", () => "homem");
print("\n ${linguicona}");

Map colocaDentro = {"valorUm": 1,"valorDois": 4, "dados" : {"improviso" : 6,"chatice" : "12"}};
print("\n $colocaDentro");

var dados = colocaDentro["dados"];
print("Dados assimilados e copiados $dados, isto é, tirados de um map e assimilados a outra variavel");
}