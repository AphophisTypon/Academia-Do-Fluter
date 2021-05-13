//Crie uma variável com o nome Pedro de Alcântara Francisco Antônio João Carlos Xavier de Paula Miguel Rafael Joaquim José Gonzaga Pascoal Cipriano Serafim de Bragança e Bourbon
//Imprima a quantidade de nomes que essa variavel tem.

void main (){
  
  String nome = "Pedro de Alcântara Francisco Antônio João Carlos Xavier de Paula Miguel Rafael Joaquim José Gonzaga Pascoal Cipriano Serafim de Bragança e Bourbon"; 
  nome = nome.replaceAll(" de","").replaceAll(" e","");
  List <String> removedor = nome.split(" ");
  print("O nome do nosso primeiro imperador contêm ${removedor.length} nomes dentro de seu único nome");
  print(removedor);
  
  //Remove o " de" e " e", pois isso não é divisivel em um nome individual e lógico. Substitui por algo vazio

}