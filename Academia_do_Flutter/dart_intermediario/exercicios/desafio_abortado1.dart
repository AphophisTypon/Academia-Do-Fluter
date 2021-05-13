// Crie um programa que gere nomes únicos e não repetitivos, devem conter vogais, posicionamento de acentos e espaços. 
// Devem ser gerados 20 nomes únicos. Eles no final, pediram o aval de um supervisor 

// const List <String> nomesConhecidos = ["Vera","Rodrigo","Leonardo","Miguel","Tiago","Maria","Morgana","Vitor","Vitoria", "Guilherme", "Lucas","João","Joaquim","Juliana","Mateus","Robert","Alexandre","Heitor","Katia","Karina","Morgana","Elias","Gabriel","Davi","Samuel","George","Giovana","Matias","Ricardo"];

import 'ferramentas.dart';

//Nomes aprovados entram como nomes novos no Set, para posteriormente serem usados como base de novos em outros ciclos de nomes gerados



//! Avançado demais, não posso fazer algo assim no momento, é muita soberba, orgulho, não sei o resto...



 const Set <String> vogais = {"a","e","i","o","u"};

dynamic analisaNome(String nomeRecebido, bool infoBase){
  alfabeto;
  if (infoBase){
    const List <String> nomesConhecidos = ["Vera","Rodrigo","Leonardo","Miguel","Tiago","Maria","Morgana","Vitor","Vitoria", "Guilherme", "Lucas","João","Joaquim","Juliana","Mateus","Robert","Alexandre","Heitor","Katia","Karina","Morgana","Elias","Gabriel","Davi","Samuel","George","Giovana","Matias","Ricardo"];
    double numeroVogais = 0;
    double comprimentoMedio = 0;
    double consoantes = 0;
    for (var nome in nomesConhecidos) {
      for (var letra in vogais) {
        if (nome.contains(letra)){
          numeroVogais++;
        } else{
          consoantes++;
        }
      } 
    }
    numeroVogais = numeroVogais/nomesConhecidos.length;
    consoantes = consoantes/nomesConhecidos.length;
    comprimentoMedio = consoantes + numeroVogais;

    // List parametros = (){
    //   return();
    // }();

    return([numeroVogais,consoantes,comprimentoMedio]);
  }else{

    // if(nome é valido){
    //   return(true);
    // }else{
    //   return(false);
    // }
  }
}



Set geraNome(List parametros){
  int tamanhoNome = parametros[(parametros.length) -1];
  int quantasVogais = parametros[0];
  int quantasConsoantes = parametros[1];
  const Set <String> vogais = {"a","e","i","o","u"};
  Set <String> consoantes = Set();

  consoantes = alfabeto.difference(vogais);
  
  String nomeGerado = "";
  return(consoantes);
}

void main (){
  
  
  // const List <String> nomesConhecidos = ["Vera","João"];
  const List <String> nomesConhecidos = ["Vera","Rodrigo","Leonardo","Miguel","Tiago","Maria","Morgana","Vitor","Vitoria", "Guilherme", "Lucas","João","Joaquim","Juliana","Mateus","Robert","Alexandre","Heitor","Katia","Karina","Morgana","Elias","Gabriel","Davi","Samuel","George","Giovana","Matias","Ricardo"];
  
}