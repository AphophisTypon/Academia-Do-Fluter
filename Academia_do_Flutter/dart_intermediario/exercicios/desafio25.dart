// Crie um programa que leia as vogais digitadas dentro de uma palavra, e as exiba

import 'dart:io';

int conteX (dynamic frase, dynamic pegaXdefrase, bool eLista){ //Conta quantos elementos tem em cada posião
  pegaXdefrase = pegaXdefrase.toString();
  
  int contagem = 0;

  if (eLista == false){
    for(var index=0;index<frase.length;index++){
      if (frase[index] == pegaXdefrase){ //transforma a variável em uma lista e verifica elemento por elemento, vendo ser aquele ponto é igual a variável pegaXdefrase
        contagem ++;
      }
    }
  }else{
    List temporario = [];
    for (var numero in frase){
      String converte = numero.toString();
      temporario.add(converte);
    }
    temporario.join("");
    for (var valores in temporario){
      for (int posicao=0;posicao<valores.length;posicao++){
        if (valores[posicao] == pegaXdefrase){
          contagem ++;
        }
      }

    }
  }
return(contagem);
}

//!///////////////////////////////////////////////////////////////////////////////////////////////////////////////////  
//!///////////////////////////////////////////////////////////////////////////////////////////////////////////////////  

void main (){
  List vogais = ["a","e","i","o","u"];
  // dynamic palavra = stdin.readLineSync().toString().toLowerCase();
  // print("Dentro da palavra ${palavra}");
  // for (var vogal=0;vogal<vogais.length;vogal++){
  //   print("A vogal |${vogais[vogal]}| aparece ${(conteX(palavra,vogais[vogal],false))} na frase escolhida");
  // }

  // print(conteX(palavra, "U", false));

    List <int> frasex = [5,6,9,55];
  print(conteX(frasex, 5, true));
}