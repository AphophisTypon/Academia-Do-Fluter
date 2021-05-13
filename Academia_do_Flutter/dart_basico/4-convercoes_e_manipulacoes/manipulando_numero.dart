void main(){
  int valor = 100;
  String conversao = valor.toString();

  print(conversao);

  print("O numero da variável 'tese', é negativo?");
  print(valor.isNegative);

  double nume = -20.4569;
  print (nume.round());
  print(nume.roundToDouble());
  print("----------------------------------------");

  int convertido = int.parse("21");
  print(" O valor connvertido agora é int, seu valor é ${convertido}");

  print(int.tryParse("Funciona?"));

num preco = 39.5;
print(preco.toStringAsPrecision(4));

}
