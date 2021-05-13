Function somaQRetornasoma(int numero1){ //Na primeira vez que ele usa essa função em uma variável, a variável se torna uma instância da função até o fim do programa
  return(int numero2){                  //Tanto que ela inclusive sofre com os efeityo dos mesmos métodos.
    return numero1+numero2;
  };
}

peganumeroDois (){
  return(3);
}

int somaComposta(dynamic numeroUm, Function peganumeroDois){
  return (numeroUm + peganumeroDois());

}

int soma(int numeroUm,int numeroDois){
  return(numeroUm+numeroDois);
}

dynamic retorno(dynamic base){ //A coisa mais básica que eu pensei, representa da forma mais fundamental o retorno do resultado de funções.
  dynamic intermediario = base;
  
  return(intermediario);
}



void main(){
  Function mensagem = (String msg){
    print(msg);
    return msg;
  };

  print(retorno("hahahahah"));

  print(mensagem("Olá Mundo"));
  // retorno(mensagem("Olá Mundo")); eese aqui e o de cima fazem a mesma coisa : )

  dynamic soma20 = somaQRetornasoma(20);
  print(soma20(10)); //Essa variável se torna uma instância da função //*somaQRetornasoma(20);
  print(soma20(5)); // É como se ele guardasse o valor original e retornasse ele depois;

  
  int teste = 7;
  print(somaComposta(teste, peganumeroDois));

}