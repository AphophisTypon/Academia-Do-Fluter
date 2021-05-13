//Crie um programa que gerencie o aproveitamento de um time de jogadores de futebol. 
//O programa deve ler o nome do jogador, a quantidade de partidas em que jogou e quantos gols forma feitos por partida, e o total de gols durante a temporada.

///http://dnaesporte.no.comunidades.net/posicoes-no-futebol#:~:text=O%20goleiro%20ou%20guarda%2Dredes,reflexos%20apurados%20e%20grande%20flexibilidade.
///Bibliografia

//! bem, já faz o mais importante, completou o desafio, mas não sei se devo fazer a parte que ordena os valores alfabeticamente

import 'dart:io';
import 'ferramentas.dart';

///forEach() - para cada elemento presente
///expand() - junta dois em uma única coisa
///map() - analisa todos os elementos dentro de uma lista
///where() - retorna o elemento identificado com a analise
///fold() - permitye operações matemáticas de dentro de uma lista

//!Use maps e folds, para calcular as operações finais de lista
//Explora a lista em busca dos dados solicitados

//
// todo: Implementar ordem alfabética


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
      return([...porJogador(nome,papel,golsPorPartida)]);
    };
  }  

}

void main (){
  String recebeData = DateTime.now().toString();
  int ano = int.parse(recebeData.substring(0,4)); ///Pega o ano em que o programa roda
  


  ///IMplemente essa maluquice no final, para não encher a paciência no momento
  
  int goleiro = 0;
  int soma = 0;

  
  

  List <String> papeis = ["goleiro","zagueiro","lateral","libero","volante","alas","medio-centro","meio-campista","meia-atacante","ponta","segundo-atacante","avancado-centro"]; 
  
  
  print("Quantos jogadores atuaram na temporada de ${ano}?");
  int numeroJogadores = repeteImputInt("int");
  List jogadores = constroiLista(numeroJogadores, false);

  for (var x=0; x<jogadores.length;x++){
    
    print("Qual o nome do jogador Nº${jogadores[x]}");
    
    String nome = stdin.readLineSync().toString();
    
    print("Quantas partidas ${nome} jogou na temporada de ${ano}?");
    int partidas = repeteImputInt("int");


    List <int> golsPorPartida = List.generate(partidas, (index) => index+1);
    for (var numeroPartida in golsPorPartida){
      print("Quantos gols foram feitos na partida ${numeroPartida}?");
      dynamic gol = repeteImputInt("int");

      int localiza = golsPorPartida.indexWhere((element) => element == numeroPartida); //Maçaroca de código
      golsPorPartida.removeAt(localiza);
      golsPorPartida.insert(localiza, gol); //Posso chamar isso de ternário? Ou programação funcional?
          
    }
    soma = golsPorPartida.fold(soma, (dynamic anterior, dynamic element) => anterior += element ); //Tem que ficar fora, se3 não ele vai ficar repetindo a soma 
    print(soma);


    print("\nQual era o papel de ${nome} como jogador?");
    String papel;
    do{
      papeis.forEach((element) => print("### - $element"));
      papel = repeteImputInt("String");
      if (papeis.any((element) => element == papel)){
        if (papel == "goleiro"){
          goleiro ++;
        }
        break;
      }
      else{
        print("O papel que você busca não existe");
        print("Repetindo:\n");
      }

    }while(true);
      var organiza = constroiLista(numeroJogadores, true); ///Fiz um clousure que funciona! Essa var se torna uma instáncia "independente" da função de lista que eu criei
      List temp = (organiza(nome,papel,golsPorPartida));
      print(temp);
      jogadores.replaceRange(x, x+1, [temp]);

  }
print("Nesta temporada: ${numeroJogadores} jogadores ${goleiro != 0 ? (",e ${goleiro} goleiro${goleiro>1 ? "s" : ""},"): ""} jogaram no seu time"); 
//Se um goleiro foi registrado, ele adiciona a citação do goleiro, e se há mais de um goleiro: ele coloca um s







// var tentativa; 
// tentativa = jogadores.map((e) => (e[2].fold(0, (dynamic anterior, dynamic element) => anterior += element ))).toList(); 
// print(tentativa); 
// tentativa = tentativa[0];

//!Foi mais fácil cirar a somatória quando eu analisava aquele valor não encerrado da lista!!!

print(soma);
print("Em média, foram ${soma/numeroJogadores} gols por jogador");



print("\n${muitasLinhas()}\nDeseja mais alguma informação específica?\n");
do{
  dynamic decisao = stdin.readLineSync().toString().toLowerCase();
  if (decisao == "s"){
    do{
      print("Gostaria de saber dados sobre qual jogador?");
      int qualJogador = repeteImputInt("int");
      qualJogador --;
      if (qualJogador > jogadores.length || qualJogador < 0){
        print("Dados foram imputados desrespeitando a ordenação do banco, por favor repita:");
      }else{
        print("O Jogador ${qualJogador+1} se chama ${jogadores[qualJogador][0]} e era um ${jogadores[qualJogador][1]}\nEle jogou ${jogadores[qualJogador][2].length} partidas");
        if (jogadores[qualJogador][1] == "goleiro"){
          for (var pontos=0; pontos < jogadores[qualJogador][2].length; pontos++){
            print("Na partida ${1+pontos} ele defendeu ${jogadores[qualJogador][2][pontos]} gols");
          }
          break;
        }else{
          for (var pontos=0; pontos < jogadores[qualJogador][2].length; pontos++){
            print("Na partida ${1+pontos} ele marcou ${jogadores[qualJogador][2][pontos]}");
            
          }
          break;
        }
      }

    }while(true);
    print("Mais alguma pergunta sobre algum jogador?\nS-sim || N=não\n");
    
    // List temp = (organiza(nome,papel,golsPorPartida));
  }else if (decisao == "n"){
    print("Encerrando");
    break;
  }else{
    print("Esse imput é invalido");
  }
}while(true);
  //     ///Se todas as validações e checagens derem resultado: 
  // }while(dados != true);
  
  // print("A media do aproveitamento de times é ${}");
  // print("O total de gols na temporada de ${ano} foi ${soma/}")

  // print("Dentro do time tem ");
}