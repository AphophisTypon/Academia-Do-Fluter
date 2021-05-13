import "ferramentas.dart";

MapdoSet(Set comMaps){
  for (var item in comMaps) {
    var analisaIdade = item["idade"];
    
    if (int.tryParse(analisaIdade) == null){
      print("A idade de ${item["nome"]} foi digitada incorretamente\nDigite a nova Idade, seguindo o modelo decimal");
      int novaIdade = repeteImputInt("int");
      item.update("idade", (value) => novaIdade.toString());
      //As atualizações feitas dentro deste for, afetam a lista na lista de base 
    }
  }
  return(comMaps);
}



void main (){
  const List chaves = ["nome","idade","sexo","estado","profissao"];
  Set centroRegistradas = new Set();
  centroRegistradas = {{"nome": "Tubly", "idade": "12", "sexo" : "F" ,"estado": "Internet", "profissao": "app"}};

  centroRegistradas.add(modeladorMap(chaves));

  centroRegistradas = MapdoSet(centroRegistradas);

  print("Pessoas registradas nos nossos sistemas");



  centroRegistradas.forEach((pessoa) => print("O cidadão ${pessoa["nome"]} tem ${pessoa["idade"]} anos\nÉ do sexo ${pessoa["sexo"] == "F" ? "Feminino, ela é uma ${pessoa["profissao"]} e vive em ${pessoa["estado"]}\n" : " Masculino, ele é um ${pessoa["profissao"]} e vive em ${pessoa["estado"]}\n"}"));




}