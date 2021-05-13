void main(){
  String nome = "Heitor Carobelli";
  
  print(nome.substring(7,11));//Quebro a Strning ao começar pelo caracter 6, isto é: tirar uma parte específica dela
  //Pode-se atribuir estas modificações como valores de variáveis.
  print("------------------------------------");

  String cortadinho = nome.substring(7); //Esse exibi todo o sobrenome, pois a segunda caixa está vazia
  print("------------------------------------");
  print(cortadinho);

  if (nome.startsWith("H")){
    print("Provavelmente, seu nome começa com H");
  }
  print("------------------------------------");
  print("O nome convertido em Minusculo fica ${nome.toLowerCase()}");
  print("------------------------------------");
  print("O nome convertido em Maiusculo fica ${nome.toUpperCase()}");
  print("------------------------------------");
  if(nome.contains("Heitor")){
    print("seu nome tem 'Heitor'");
  }
  print("------------------------------------");
  if (nome.toLowerCase().contains("heitor")){
    print("converti tudo em minusculo, então funciona!!!");
  }
  print("------------------------------------");
}