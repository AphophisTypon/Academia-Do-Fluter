// Crie um programa que tenha uma contagem por valores extensos, de zero até vinte. 
// Seu programa deverá ler um número pelo teclado (entre 0 e 20) e mostra-lo por extenso.

import "dart:io";

dynamic avaliaNum(dynamic valor){  
  if (int.tryParse(valor) != null ){
    valor = int.parse(valor);  
    if (valor > 20 || valor <0){
      return false;
    } else{
      return true;
    }
  } else{
    return null;
  }
}
void main(){
  print("Digite algum número entre 1 e 20");
  List <String> tabuada = ["um","dois","tres","quatro","cinco","seis","sete","oito","nove","dez","onze","doze","treze","catorze","quinze","dezeseis","dezeste","dezoito","dezenove","vinte"];
  
  dynamic receptor = stdin.readLineSync();
  dynamic localiza;
  if (avaliaNum(receptor) == true){
    localiza = int.tryParse(receptor);
    localiza =  (tabuada[(localiza - 1)]);
    print("O valor digitado:${receptor}\nCorresponde a: ${localiza}");
  }else{
    var temp = receptor.toLowerCase();
    if (tabuada.indexOf(temp) == -1){
      print("O valor ${receptor} não existe dentro do registro de tabuada cabe entre 1 e 20");
    } else{
      localiza = (tabuada.indexOf(temp) +1);
      print("O valor digitado:${receptor}\nCorresponde a: ${localiza}");
    }
  }
}

// void main(){
//   print("Digite algum número entre 1 e 20");
//   List <String> tabuada = ["um","dois","tres","quatro","cinco","seis","sete","oito","nove","dez","onze","doze","treze","catorze","quinze","dezeseis","dezeste","dezoito","dezenove","vinte"];
//   dynamic receptor = stdin.readLineSync();
//   dynamic localiza;
//   if (int.tryParse(receptor) != null){
//     localiza = int.tryParse(receptor);
//     localiza =  (tabuada[(localiza - 1)]);
//   }else{
//     var temp = receptor.toLowerCase();
//     localiza = (tabuada.indexOf(temp) +1);
//   }
//   print("O valor digitado:${receptor}\nCorresponde a: ${localiza}");
// }