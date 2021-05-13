//Para agilizar ainda mais cas coisas, se ao inves de disperdiçar espaço com um monte de linhas em cima de uma função mediocre, não fazer a operação mediocre em uma linha?
//Esse é o trabalho das funções arrow, elas agilizam as coisas

int somaNormal (int num1, int num2){
  return(num1+num2);
}

int somaArrow (int numero1, int numero2) => (numero1+numero2);


                                                                                                                                                                                         
void main (){
  int primeiro = 4;
  int segundo = 12;

  print("""
  Soma Arrow ${somaArrow(primeiro,segundo)}
  Soma Comun ${somaNormal(primeiro,segundo)}
  """);
}