//Faça um programa que leia algo digitado, e mostre na tela todas as informações possíveis sobre ele.

///Passos
///é numero ou str? 
///Se numero, mostre as transfrormações possíveis com ele e validadores, tipo: é negativo? é irracional?
///
///Se str, pergunta se ele deseja colocar uma base de indexação, sele não quiser: comandos que tomam por base indexação não devem ser realizados
///
///
import "dart:io";

void main() {
  print("Você deseja analizar um número ou uma palavra?");
  print("Digite o número que você deseja analisar, ou meramente a palavra");


  
  dynamic referencia = stdin.readLineSync().toString();
  
  //!Referencia de tentativa
  ///String coiso = "aaaa".toLowerCase();
  
//      !Por causa da bosta do jeito que foi feita essa linguagem, qualquer desafio que eu fizer envolvendo o terminal dá nesse tipo de coisas
//      !Python resolveria isso sem problema, começo a duvidar aquilo que o pai disse sobre: tudo em uma coisa só, não consegue nem lidar com uma coisa!!!
// 
// Por que isso funciona na Ide como .dart, mas não no prompt como .exe?????
  //Pelo menos, funciona em alguma instância.

  if (int.tryParse(referencia) == null){
    print("Não foi escolhido número");
    print("");
    print("**************************************");
    print("Antes de tudo, deseja atribuir a opção de indexação?");
    print("S - sim || N - qualquer outra coisa");
    dynamic decisao = stdin.readLineSync().toString().toUpperCase();
    if (decisao == "S"){
      print("**************************************");
      print("Digite o valor de indexação, menor que o comprimento da palavra, para comprimi-la de acordo");
      
      //Ele não deixa eu fazer a conbversão diretamente p0or uma variável, então ficou essa gambiarra
      dynamic index = stdin.readLineSync().toString();
      dynamic indexR = (int.tryParse(index));  
      if (indexR == null){
        print("ok, pulo essa parte");
      }else{
        indexR = indexR -1; //O usuário contaria x palavras, enquanto o computador x -1, pois ele começa no 0. Precio perverter o número do usuário
        if (indexR >= referencia.length){
          print("número invalido, ele é maior que operação cancelada");
        }else if (indexR < 0){
          print("Eu preciso de um numero POSITIVO ");
        }else {
          print("Reconhecido o requisito:");
          print("");
          
          print("Utilizando o número $indexR como índice, a palavra fica desse jeito: ${referencia.substring(indexR)}");
          print("**************************************");
          print("");
        }
      }    
    }else{
      print("Resposta reconhecida, executando opções padronizadas");
    }
    print("");
    print("Finalmente, você gostaria de uma palavra/frase como base de busca?");
    print("S - sim || N - qualquer outra coisa");
    dynamic base = stdin.readLineSync().toString().toUpperCase();
    if (base == "S"){
      print("****************************");
      print("Reconhecido, agora, digite a palavra/frase");
      dynamic analise = stdin.readLineSync().toString();
      if (referencia.contains(analise)){
        print("A frase ${referencia} contém o segmento ${analise}");
      }else{
        print("A frase ${referencia} não contém o segmento ${analise}");
      }
      String analisePrima = analise.substring(0,1);
      print(analisePrima);

      if (referencia.startsWith(analise.substring(0,1))){
        print("A palavra ${referencia} começa com a letra: ${analise.substring(0,1)}");
      }else{
        print("A palavra ${referencia} não começa com a letra: ${analise.substring(0,1)}");
      }
      print("****************************");

    }  
    print("Valor Upper Case: Referencia ${referencia}, transformado: ${referencia.toUpperCase()}");
    print("Valor Lower Case: Referencia ${referencia}, transformado: ${referencia.toLowerCase()}");
  }else{
    final valor = int.parse(referencia);
    print("Devo analisar seu numero");
    print("");

    if (valor.isNegative){
      print("o seu número é negativo");
    }else{
      print("Seu número não é negativo");
    }
    if (valor.isEven){
      print("Seu número é Par");
    } else{
      print("seu número é impar");
    }
    print("Número utilizado: ${valor}");
  }
  
 

}