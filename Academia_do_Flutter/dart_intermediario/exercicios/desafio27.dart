// Crie um programa que leia nome e duas notas de vários alunos e guarde tudo em uma lista composta. 
// No final, mostre um boletim contendo a média de cada um e permita que o usuário verifique as notas de cada aluno individualmente

//!São Poucas as coisas que eu poderia usar a partir desses clousures, pois o que eu repasso são dados e variáveis, 
//*não funções e metodos do tipo: faça aparecer o botão X, ou criptografe a sequencia de characteres: "ABCD é uma senha fraca"

import 'dart:io';

List porAluno(String nome, int notaUm, int notaDois){
  
  double media = (notaUm,notaDois){
  return((notaUm+notaDois)/2);

  }(notaUm,notaDois);

  return ([nome,media]);
}

// criaIndice (porAluno){
//   var temp = porAluno;
//   String nome = temp[0];
  
//   List alfabeto = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];
  
//   List nomeForma = [];
//   for (var letra=0; letra<nome.length;letra++){
//     for (var character in alfabeto){
//       if (nome[letra] == character){
//         nomeForma.add(alfabeto.indexOf(nome[letra]));
//       }
//     }
//   } 
  
  //Bob -> (1,14,1).primeirocharactermaiusculo
  //Alice -> (0,12,8,2,4).primeirocharactermaiusculo
  //Aaa -> (0,0,0); deve seguir o Len original e ordenar 
  // return(nomeForma);
// }

void main (){
  
  print("Quantos alunos tem na classe?");
  // dynamic alunos = "3";
  dynamic alunos = stdin.readLineSync();
  double mediageral = 0;
  List classe = [];

  if (int.tryParse(alunos) != null){
    alunos = int.tryParse(alunos);
    print("De os dados de seus alunos:");
    do{
      print("\n${'-=-='*12}");
      print("O nome");
      String nome = stdin.readLineSync().toString();
      print("Sua nota do primerio trimestre");
      dynamic notaUm = stdin.readLineSync();
      notaUm = int.parse(notaUm);
      print("Sua nota do segundo trimestre");
      dynamic notaDois = stdin.readLineSync();
      notaDois = int.parse(notaDois);

      
      // int notaUm = 4;
      // int notaDois = 6;
      // String nome = ("Bob");
      var aluno = porAluno;
      classe.add(aluno(nome,notaUm,notaDois));

      
      alunos--;
      
    }while((alunos >0));
  }else{
    print("Digite a coisa do jeito certo");
  }
  print("\nEis a classe e seus alunos:\n");
  for (var pessoa=0; pessoa<classe.length;pessoa++){
    print("Nº ${pessoa+1} - ${classe[pessoa]}");
    
    mediageral = mediageral+classe[pessoa][1];
  }

  print("-=-="*10);
  print("A media geral da classe foi: ${mediageral/classe.length}");
  print("-=-="*10);
  print("Deseja ver os dados de algum aluno em específico? Digite o seu numero de classe:");
  
  // dynamic numeroClasse = "1nrty";
  dynamic numeroClasse = stdin.readLineSync().toString();
  numeroClasse = int.tryParse(numeroClasse);
  if (numeroClasse != null){
    
    if(numeroClasse> classe.length || numeroClasse<1){
      print("O numero ${numeroClasse} não existe na opção");
    }else{
      numeroClasse --;
      print(classe[numeroClasse]);
    }
  }else{
    print("\nTenha um bom dia");
  }
  
  //Todo: fazer o sistema que acha os alunos, por meio de funções

}




  // for (var letra=0; letra<nome.length;letra++){
    
  //   for (var character in alfabeto){
  //     if (nome[letra] == character){
  //       nomeForma.add(alfabeto.indexOf(nome[letra]));
        
  //     }
  //   }
  // } 