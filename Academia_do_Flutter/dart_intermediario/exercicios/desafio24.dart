// Crie um programa que vai gerar cinco números aleatórios. 
// Depois disso, mostre a listagem de números gerados e também indique quais são o maior e menor valores, e ordenalos em ordem crescente.

import "dart:math";
int menosMais(List <int> paraAnalise, bool menosOuMAIS){
  int maior = paraAnalise[0];
  int menor = paraAnalise[0];
  for (var x in paraAnalise){
      if (maior< x){
        maior = x;
      }
      if (menor> x){
        menor = x;
      }
  }
  if (menosOuMAIS == true){
    return(maior);
  }else{
    return (menor);
  }
}

List OrdenaLista(List <int> numes, bool crescente){
  List <int> gabarito = [...numes];
  List chatice = [];
  if (crescente == true){
  int maior = (menosMais(gabarito, true));

  chatice.add(maior);
  gabarito.remove(maior);

  int tamanho = gabarito.length;
    for (var x=tamanho-1;x>-1;x--){
      int newvalor = menosMais(gabarito,false);
      gabarito.removeAt(gabarito.indexOf(newvalor));
      chatice.insert(chatice.length-1,newvalor);
    }
  }else{
    int menor = (menosMais(gabarito, false));

    chatice.add(menor);
    gabarito.remove(menor);

    int tamanho = gabarito.length;
    for (var x=tamanho-1;x>-1;x--){
      int newvalor = menosMais(gabarito,true);
      gabarito.removeAt(gabarito.indexOf(newvalor));
      chatice.insert(chatice.length-1,newvalor);
    } 
  }
  return(chatice);
  
}

void main(){
  dynamic rng = Random();
  List <int> aleatorio = [];
  for (var index=0;index<5;index++){
    aleatorio.add((rng.nextInt(100)));
  }
  
  print("Original: ${aleatorio}");
  print("O maior valor gerado é: ${menosMais(aleatorio,true)}");
  print("O menor valor gerado é: ${menosMais(aleatorio,false)}");
  print("Modificado e Ordenado: ${OrdenaLista(aleatorio,true)}");
  
}
