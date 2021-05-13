void main(){
  List<int> numeros = [1,2,3,4,5,9];
  print(numeros);

  ///*adicionando coisas
  ///
  ///Adiciona na última casa
  numeros.add(10);  
  print(numeros);

  ///Adiciona em um lugar em específico
  numeros.insert(0, 0);
  print(numeros);

  ///Ele destroi a lista, coloca na posição o valor e reconstroi todo o negócio

  //! Tirando coisas
  ///tirado um valor em uma posição específica do negócio
  numeros.removeAt(1);
  print(numeros);


  ///Retira um valor x, independente de sua posição
  print("\n**************");
  print("ohh não, coloquei o numéro 99 no lugar errado");
  numeros.insert(4, 99990);
  print(numeros);
  print("Usando o comando remove, resolvo o problema");
  numeros.remove(99990);
  print(numeros);


  ///Retira valores não específicos, seguindo o comprimento da lista.
  print("Mas estou com um mal presentimento...");
  numeros.removeRange(5, 7);///numeros.removeRange(inicio,fim);
  print(numeros);
  print("Bolas!! Removi o 9 e 10?!, aff que chatice");
  //Retira valores seguindo uma verificação lógica, tipo: se um valor for alabeto, retire ele da lista.
  numeros.removeWhere((v) => v >3);
  print("Espera, estou tentando recolocar tudo maior que 3; eeee.......");
  print(numeros);
  print("... Mano. descobri que eu posso voltar no tempo, olha só:");
  numeros = [0,1,2,3,4,5,9];
  print(numeros);
  print("feito...");
  }