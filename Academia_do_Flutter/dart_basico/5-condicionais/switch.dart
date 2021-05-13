void main(){
  int dia = 0;
  var teste = "nulado";
  int ternario = (dia > -1 ? 12: 18);//Se dia maior que -1, então ternário será 12. Do contrário: ternário será 18.
  

  switch(dia){    //Nunca pode haver um switch que não tenha uma variável base, e parce que as análises giram em torno desta variável
    case 0:
      print("Sabado");
      break;        //Se tiver mais de um "case", ele demanda que o programa termine normalmente
    case 1:
      print("Segunda feira");
      break;
    case 2:
      print("Quarta");
      break;
    default:
      print("Inavalido");
  }
}