//Todo: Baseado na lista acima.
//* 1 - Remover os duplicados - por ultimo
//* 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
//* 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e mostre a quantidade de pessoas com mais de 18 anos
// 4 - Encontre a pessoa mais velha.
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void analisadorDcoisas(List original){
  List <String> gabarito = [];
  List <String> Remover = [];
  Map <String,dynamic> pessoaGrande = {};
  
  int Nlheres = 0;
  int maiorIdade = 0;

  try{
    for (var item in ((original).toSet()) ) {
      gabarito.add(item);
      
      if(!(item.contains("|Feminino") || item.contains("|Masculino"))){
        throw TypeError();
      }
      Nlheres += item.contains("|Feminino") ? 1 : 0;

      item = item.split("|"); 

      if ((int.parse(item[1])) >= 18){
        if(maiorIdade < int.parse(item[1])){
          pessoaGrande = {"nome": item[0], "idade" : item[1],"sexo" : item[2]};
          maiorIdade = int.parse(item[1]);
        }
      }else{
               
        Remover.add(item.join("|"));

        if (item[2] == "Feminino"){
          Nlheres -= 1;
        }
      }
    }
    Remover.forEach((element) => gabarito.remove(element));
    print("1 - A lista completa e modificada é:\n$gabarito\nAnteriormente\n$original\n");
    print("2 - Tem ${Nlheres} mulheres e ${gabarito.length - Nlheres} homens na lista de maior idade");
    print("3 - Logo, temos ${gabarito.length} pessoas maiores de idade, sendo");
    print("4 - Aquele de idade mais avançada é: ${pessoaGrande["nome"]}, tem sexo ${pessoaGrande["sexo"] == "Feminino" ? "Feminino":"Masculino"}, sua idade é ${pessoaGrande["idade"]} anos");

  }on FormatException catch (e,s) {
    print("Um valor invalido designado para convesão de String para numerico.}");
    print(e); 
    print("Rastro: $s");
  }on TypeError catch(e,s){ 
    print("Um valor inadequado foi posicionado em ${s}");
    print("Esta seleção de valores devem ser do tipo 'masculino' ou 'feminino'");
  } catch(e,s){
    print("Um erro ocorreu por conta de um $e");
    print("Cujo Rastro é $s");
  }
}
  







  

  
  
  






void main (){
  var pessoas = [
    'Rodrigo Rahman|35|Masculino', //Erro intencional, precisa corrigi-lo
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

analisadorDcoisas(pessoas);

}