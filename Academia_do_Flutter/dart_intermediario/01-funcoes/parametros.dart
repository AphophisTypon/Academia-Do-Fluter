
imprimirLinhas(String texto){
int tamanho = texto.length;
return("${"-="*tamanho}\n${" "*(tamanho~/2)}${texto}\n${"-="*tamanho}");
}



void main(){
  print(imprimirLinhas("abcd"));
  print(somaOpcional(4,7));
  print(somaAtribuida(numeroUm: 9,numeroDois: 6));
}

///Tipos de parámetros
int soma(int numeroUm, int numeroDois){ //!Obrigatório colocar valores
  int soma = numeroDois+numeroUm;
  return soma;
}

int somaNomeada({dynamic numeroUm, dynamic numeroDois}){ //?Aceita valores desordenados, mas requer que você os especifique com: funcao(numeroUm=14,divisor=6)
  return (numeroUm + numeroDois);                        //?colocar valores para executar a função, mas não te protege de erros
}

int somaAtribuida({int numeroUm=0,int numeroDois=0}){ //*Atribui valores base, isto é, default. Protege contra coisas como valores "null" combinados com "int" ou "string"
  return(numeroUm+numeroDois);
}

int somaOpcional (int numeroUm,[int terceiro=0]){ //todo negócio, ou até somente uma parte se torna opcional rteceber algum valor;
  return (numeroUm +terceiro);
}