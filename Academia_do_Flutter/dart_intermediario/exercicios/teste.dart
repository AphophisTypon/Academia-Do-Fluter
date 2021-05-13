
///!Eu odeio listas!!!!!///!Eu odeio listas!!!!!///!Eu odeio listas!!!!!///!Eu odeio listas!!!!!///!Eu odeio listas!!!!!///!Eu odeio listas!!!!!///!Eu odeio listas!!!!!///!Eu odeio listas!!!!!///!Eu odeio listas!!!!!///!Eu odeio listas!!!!!

import "ferramentas.dart";

// int menosMais(List <int> paraAnalise, bool menosOuMAIS){
//   int maior = paraAnalise[0];
//   int menor = paraAnalise[0];
//   for (var x in paraAnalise){
//       if (maior< x){
//         maior = x;
//       }
//       if (menor> x){
//         menor = x;
//       }
//   }
//   if (menosOuMAIS == true){
//     return(maior);
//   }else{
//     return (menor);
//   }
  
// }
  
// void main(){
//   List <int>numes = [14,68,3,5,78,3,4,7];
//   List chatice = [];
//   int maior = (menosMais(numes, true));

//   chatice.add(maior);

//   numes.remove(maior);
//   int tamanho = numes.length;
//   for (var x=tamanho-1;x>-1;x--){
//     int newvalor = menosMais(numes,false);
//     numes.removeAt(numes.indexOf(newvalor));
//     chatice.insert(chatice.length-1,newvalor);
//   } 
//   print(chatice);
//   print(numes);
// }

// int conteX2 (dynamic frase, dynamic pegaXdefrase, bool listInterna){ //Conta quantos elementos tem em uma lista
//   pegaXdefrase = pegaXdefrase.toString();
//   int contagem = 0;
//   if (listInterna == false){
//     for(var index=0;index<frase.length;index++){
//       if (frase[index] == pegaXdefrase){ //transforma a variável em uma lista e verifica elemento por elemento, vendo ser aquele ponto é igual a variável pegaXdefrase
//         contagem ++;
//       }
//     }
//   }else{
//     List temporario = [];
//     for (var numero in frase){
//       dynamic converte = numero.toString();
//       temporario.add(converte);
//     }
//     temporario.join("");
//     for (var valores in temporario){
//       if (valores.contains(pegaXdefrase)){
//         contagem ++;
//       }
//     }
//   }
// return(contagem);
// }

// void main (){
//   List teste = [12,5,8,9,21];
//   // print(conteX(teste,5,false));
//   print(conteX2(teste, 1,true));
// }

// void main (){
//   List<int> a = [1,2,3];
//   List<int> b = [...a]; // copy of a
//   b.removeAt(0);
//   print(a);
//   print(b);

// }

// import "dart:io";
// void main(){
//   print("Por quantos anos (em escala decimal) você contribuiu");
//     dynamic contribuicao = stdin.readLineSync();
//     contribuicao = int.parse(contribuicao);
//     print(contribuicao.isNegative);
// }
// 

constroiLista(int numeroJogadores,bool varRecebe){
  ///Não funciona para modelos generalizados
  if (varRecebe == false){
    List modeloLista = (int numeroJogadores){
      List base = List.generate(numeroJogadores, (index) => index+1);
      return(base);
    }(numeroJogadores);
    return(modeloLista);
  }
  else{
    return(nome,papel,golsPorPartida){;
      porJogador(nome,papel,golsPorPartida){
        List dados =  List.generate(3, (index) => index);
        dados.replaceRange(0, 3, [nome,papel,golsPorPartida]);
        return(dados);
      }
      return(porJogador(nome,papel,golsPorPartida));
    };
  }  
// //todo: Se adequar a ordem alfabética
}

analisaLista(String Recebenome, [bool dados=false]){
  Recebenome = Recebenome.toLowerCase();
  List<String> nome = Recebenome.split('');
  const List <String> alfabeto = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];
  
  var soma = (nome.map((element) => alfabeto.indexOf(element))).toList();
  return(soma.fold(0, (int anterior, int element) => element+= anterior ));

//Basicamente, eu tento procurar na lista alfabeto o valor de indice crescente dentro da lista nome.
}

void main (){
  


  
  // int valorUm = 5;
  // print(valorUm);
  // print(valorUm.isNegative);
  // valorUm = valorUm - 100;
  // print(valorUm);
  // print(valorUm.isNegative);

  // valorUm = -(valorUm);
  // print(valorUm);
  // print(valorUm.isNegative);

  dynamic dia = DateTime;
  
  var moonLanding = DateTime.parse("1969-07-20 20:18:04Z");
  assert(moonLanding.weekday == 7);
  assert(moonLanding.weekday == DateTime.sunday);
  
  DateTime date = DateTime.now();
  print("weekday is ${date.weekday}");
  
  print(dia);
  print(moonLanding);

  DateTime data = DateTime.now();

print(diasDaSemana(true));


  // String copiamaracutaia = maracutaia.join("-");
  // var chatice = estimulo.join("-");
  // print(chatice);
  
  // print(copiamaracutaia);

  //   Set nulado = Set();
  // nulado.add(null);

  
  // print((nulado.elementAt(0)).toUpperCase() );

  // print(maracutaia);
  // print(maracutaia.contains(estimulo.join("-")));
  // print(proporcao);
  // print(estimulo);


  
  // List <dynamic> proporcao = [[12,111,66],[129,11,9],[78,911,1001],[45,9,46]];
  // List <dynamic> estimulo = [129,11,92];
  // List maracutaia = proporcao.expand((element) => element).toList();
  // String copiamaracutaia = maracutaia.join("-");
  // var chatice = estimulo.join("-");
  // print(chatice);
  
  // print(copiamaracutaia);
  // print(maracutaia);
  // print(copiamaracutaia.contains(chatice));
  // print(proporcao);
  // print(estimulo);


  // String nome = "Joaquim";

  // int golsPorPartida = 3;

  // var bagaco = constroiLista(numeroJogadores, true);

List meAnalise = ['Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino'];


//Funciona para remover os valores que me são indesejáveis, parece-me que consigo implementar essa coisa, e manter o funcionamento das outras funções


// int conta = 0;
// var analiseDRisco = [];
// for (var item in ((meAnalise).toSet()) ) {
//     conta +=1;
//     item = item.split("|"); 
//     analiseDRisco.add(item);  
//   }


try{
List <String> alfabeto = [];
dynamic dinamizado = 14;

alfabeto.add(dinamizado);
}on TypeError catch(e,s){
  print("bwedjefrcbmnkefro");
}

}
