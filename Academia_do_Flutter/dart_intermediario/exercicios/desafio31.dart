// Crie um programa que leia a “sorte de uma pessoa”, 
// se baseando em um resultado de jogo de dados virtual e contando quantas vezes a opção de sorte do usuário foi concretizada.

import 'ferramentas.dart';
import 'dart:io';
import 'dart:math';

void main(){
  print("\n\nUm jogo de 2 dados, você pode escolher um número de 1 a 12");
  int meuPalpite = repeteImputInt("int");
  // int meuPalpite = 7;
  int quantasVezes = 0;
  int aleatorio;


  if (estaDentroDeInt(meuPalpite, 1, 12)){
    print("Sua opção é valida\n");
    print("\nQual a modalidade de jogo?\n 1 - Tente X vezes\n 2 - Quantas vezes eu precisar\n 3 - Ache minha jogada X vezes");
      int decisao = repeteImputInt("int");
      int vezes = 0;
      switch (decisao){
        
        case 1:
          print("Quantas vezes eu devo tentar?");
          vezes = repeteImputInt("int");
          List <int> resultados = [];
          int tentativas = vezes;
          do{
            aleatorio = Random().nextInt(13);
            
            resultados.add(aleatorio);
            if (aleatorio == meuPalpite){
              quantasVezes ++;
            }
            vezes --;
          }while(vezes !=0);

          print("Seu palpite ${meuPalpite} foi sorteado ${quantasVezes} dentro de ${tentativas}\n");
          
          resultados.forEach((element) => print("O valor número${(resultados.indexOf(element) +1)} corresponde ao elemento ${element}"));

          break;
        case 2:
          List <int> resultados = [];
          do{  
            aleatorio = Random().nextInt(13);
            
            resultados.add(aleatorio);
            if (aleatorio == meuPalpite){
              break;
            }else{
              vezes++;
            }
          }while(true);
          print("Para encontrar seu palpite de ${meuPalpite}, eu tentei ${vezes} vezes");

          resultados.forEach((element) => print("O valor número${(resultados.indexOf(element) +1)} corresponde ao elemento ${element}"));
          break;

        case 3:
        print("\n Quantas vezes o valor ${meuPalpite} deve repetir?");
          vezes = repeteImputInt("int");
          int forma = vezes; //Se não, eu não consigo imprimir o craçamva da mensagem (pelo menos, usando o que eu sei).
          int contador = 0;
          
          do{
            contador ++;    
            aleatorio = Random().nextInt(13);

            if (meuPalpite == aleatorio){
              vezes--;
            }
          }while(vezes != 0);
          print("Para encontrar o valor ${meuPalpite}, ${forma} vezes, foram feitas ${contador} jogadas");
          break;

        default:
          print("O valor inserido não é adequado");
          break;
      }
  }else{
    print("Escolha uma opção de 1 a 12, ${meuPalpite} não vinga");
  }
}
