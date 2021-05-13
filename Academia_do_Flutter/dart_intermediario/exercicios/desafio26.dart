// Crie um programa que vai ler vários números e coloque-os em uma lista. 
// Com um input” XYZA”, deve parar a contagem e: mostrar quantos números foram digitados e os valores ordenados em ordem decrescente.
// Além disto, deve: verificar quantas vezes o número 5 foi digitado, em que posição foi digitado o valor 3, 6 ou 9, 
// e quais foram os números pares digitados.

import "dart:io";
import"desafio25.dart";
import "desafio24.dart";
///dart desafio26.dart

void main (){
  print("Digite o valor de entrada, o programa encerra com XYZA");
  List <int> valoresDigitados = [];
  do {
    dynamic entrada = stdin.readLineSync();
    
    if (entrada == "XYZA"){
      print("Programa ERncerrado");
      break;
    }else{
      if (int.tryParse(entrada) != null){
        valoresDigitados.add(int.parse(entrada));
        print(valoresDigitados);
      }else{
        print("O valor digitado é invalido");
        continue;
      }
    }
  }while (valoresDigitados != "XYZA");
  
  int vezesPares = 0;
  for (var valor in valoresDigitados){
    vezesPares = (valor%2 == 0 ? vezesPares+1:vezesPares+0);
    
  }
  
    /// Consegui copiar os elementos da lista, evitando que as modificações em uma, afetam a original.
    ///*https://stackoverflow.com/questions/21744480/clone-a-list-map-or-set-in-dart

  print("Foram digitados ${valoresDigitados.length} valores");
  print("Ordenada, tem os seguintes valores: ${OrdenaLista([...valoresDigitados], false)}");
  print("-=-="*18);
  
  

  if (valoresDigitados.contains(5)){
    print("O valor 5 foi digitado\nEle aparece ");
    print(conteX(valoresDigitados, 5, true));
  }else{
    print("O valor 5 não foi digitado");
  }
  print("Encontrei ${vezesPares} valores pares");
}
