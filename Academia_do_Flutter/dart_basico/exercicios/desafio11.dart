///Um programa que faça a conversão de x reais para y euros e z dólares

void main(){
  print("Eu vou converter 100 reais\nx dolares\nY Euros");
  print("-=-="*12);

  const real = 100;
  final cotacaoDolar = 5.65;
  final cotacaoEuro = 6.69;
  ///String simbolo = "$print";
  print("-=-*"*12);
  print("Com 100 reais, eu compro: ${real/cotacaoDolar} dolares");
  print("Com 100 reais, eu compro: ${real/cotacaoEuro} euro");
  print("-=-*"*12);
  print("cotação de 06/04/21 as 10:01");

}