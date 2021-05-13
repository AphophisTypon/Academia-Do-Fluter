// Crie um jogo de pedra papel e tesoura

import "dart:io";
import 'dart:math';

void main (){
  const List jogadas = ["Pedra","Papel","Tesoura"];
  bool querJogar = true;
  print("Você quer jogar um jogo de pedra, papel, tesoura?");
  print("Não - 0\nSim - 1");
  dynamic temp = stdin.readLineSync();

  if (int.tryParse(temp) == 1){
    querJogar = true;
  }else if (int.tryParse(temp) == 0){
    print("Nossa... Inesperado, mas tudo bem...");
    querJogar = false;
  }else{
    print("Não entendo alfabeto Mongol, acho que você escreveu 'sim...'");
  }
  while (querJogar == true){
    dynamic resultado;
    print("-=-=-="*6);
    print("Você escolhe pedra, papel ou tesoura?");
    print("-=-=-="*6);
    print("Pedra - 0\nPapel - 1\nTesoura - 2\n${"-=-=-="*6}");
    var rng = Random();
    dynamic usuarioJoga = stdin.readLineSync();
    if(int.tryParse(usuarioJoga) != null) {
      usuarioJoga =  int.tryParse(usuarioJoga);
      if (usuarioJoga>2 || usuarioJoga<0){
        print("Deve ser um valor de 0 a 2 para jogar...");
        break;
      }
      dynamic jogadaComputador = rng.nextInt(2);
      
      switch(jogadaComputador){
        case 0:
          //! Pedra
          switch(usuarioJoga){
            case 0:
              print("Eu joguei ${jogadas[jogadaComputador]}, você ${jogadas[usuarioJoga]}");
              resultado = null;
              break;
            case 1:
              print("Eu joguei ${jogadas[jogadaComputador]}, você ${jogadas[usuarioJoga]}");
              resultado = true;
              break;
            case 2:
              print("Eu joguei ${jogadas[jogadaComputador]}, você ${jogadas[usuarioJoga]}");
              resultado = false;
              break;
          }
          break;
        case 1:
        //! Papel 
          switch(usuarioJoga){
              case 0:
              print("Eu joguei ${jogadas[jogadaComputador]}, você ${jogadas[usuarioJoga]}");
              resultado = false;
              break;
            case 1:
              print("Eu joguei ${jogadas[jogadaComputador]}, você ${jogadas[usuarioJoga]}");
              resultado = null;
              break;
            case 2:
              print("Eu joguei ${jogadas[jogadaComputador]}, você ${jogadas[usuarioJoga]}");
              resultado = true;
              break;
          }
          break;     
        case 2:
          switch(usuarioJoga){
              case 0:
              print("Eu joguei ${jogadas[jogadaComputador]}, você ${jogadas[usuarioJoga]}");
              resultado = true;
              break;
            case 1:
              print("Eu joguei ${jogadas[jogadaComputador]}, você ${jogadas[usuarioJoga]}");
              resultado = false;
              break;
            case 2:
              print("Eu joguei ${jogadas[jogadaComputador]}, você ${jogadas[usuarioJoga]}");
              resultado = null;
              break;
          }
        break;
      }
    if (resultado == true){
      print("Você ganhou...");
    }else if (resultado == null){
      print("empate?");
    }else{
      print("voce PERDEU!!!");
    }
    }else{
    print("ERRO\nVocê digitou o valor incorreto");
  }
    print("Quer jogar denovo?");
    print("S - sim|N - não");
    dynamic decisao = stdin.readLineSync().toString().toUpperCase();
    if (decisao == "N"){
      querJogar = false;
    }else if (decisao == "S"){
      querJogar = true;
    }else{
      print("Ainda não entendo o alfabeto de Mongol...");
    }
  }
}