///Crinado funcoes
// void main(){
//   print(soma(4,2));
// }

int soma(int numeroUm, int numeroDois){
  int soma = numeroDois+numeroUm;
  return soma;
}


int somaNomeada({dynamic numeroUm, dynamic numeroDois}){
  return (numeroUm + numeroDois);
}