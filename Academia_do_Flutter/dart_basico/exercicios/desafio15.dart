// Crie uma variável com o nome Pedro de Alcântara Francisco Antônio João Carlos Xavier de Paula Miguel Rafael Joaquim José Gonzaga Pascoal Cipriano Serafim de Bragança e Bourbon
// Imprima a quantidade de caracteres que tem nessa variável



void main (){
  String agregado ="";
  String nome = "Pedro de Alcântara Francisco Antônio João Carlos Xavier de Paula Miguel Rafael Joaquim José Gonzaga Pascoal Cipriano Serafim de Bragança e Bourbon";
  var lista = nome.split(" ");

  for (var index = 0; index<lista.length;index++){
    agregado = (agregado+"${lista[index]}");
  }
  
  print("A palavra: ${nome}\nContando os espaços tem ${nome.length} palavras\nDesconsiderando os espaços, são: ${agregado.length}");
}