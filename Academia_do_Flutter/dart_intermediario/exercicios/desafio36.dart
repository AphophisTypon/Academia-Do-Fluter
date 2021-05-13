//Uma cafeteria com diferentes produtos e serviços de atendimento, os tipos de café servidos não podem ser repetidos e devem ter nomes singulares(não repetitivos)
// Os cafes seguem as seguintes proporçoes, que unidas não podem ser superiores a 100% (de concentração)

//Igredientes
//*Leite
//*café
//*açucar
//?chocolate
//?caramelo

import 'dart:io';

import 'ferramentas.dart';
// import 'package:colorize/colorize.dart';
const List <String> igredientes = ["cafe","leite","acucar","caramelo","chocolate"];

List <dynamic> proporcaoCafes = [[34.0, 0.0, 0.0, 2.0, 64.0], [60.0, 15.0, 5.0, 15.0, 5.0], [40.0, 20.0, 6.0, 22.0, 0.0]];

List <String> nomesCafes = ["Cafe achocolatado","100 porcento","Tumberlino"];

imagemCafe(List proporcaoCafes, [int local=-2]){
  if (local != -2){
    print("O ${nomesCafes[local]} existe no sistema");
  }




print("   //                      \\");
print(" //                          \\//  \\");
print("//                            |     ||");
print("||                            |     ||");
print("\\                           /\\____//");
print(" \\                         //");
print("  \\                      // ");
print("   \\\------------------// ");

print("\n $proporcaoCafes");

}

registrando(){
//Eu registro as coisas
if (nomesCafes.length == 0){
  print("Não há nenhuma receita registrada\n");
  List receita = (criandoCafe());

  if(fazSN("Deseja registrar a façanha?", "Digite um valor valido")){
    proporcaoCafes.add(receita);
    print("Crie o nome do café:");
    
    nomesCafes.add(meDaNome());
  }
}else{
  print("Qual o café que o cliente busca?");
  String nome = meDaNome();
  
  if (nomesCafes.contains(nome) == false){
    print("\n${"\\O café pesquisado não existe no nosso sistema/"}\n");
    var igrediente = criandoCafe();
    String porcuraIgrediente = igrediente.join("-");
    
    
    if (proporcaoCafes.any((element) => (element.join("-")) == porcuraIgrediente)){
      for (var i = 0; i < proporcaoCafes.length; i++) {
        if(proporcaoCafes[i].join("-") == porcuraIgrediente){
          print(muitasLinhas("Mas a receita dele existe, e aqui ele se chama ${nomesCafes[i]}"));  
        }
      }
    }else{
      if(fazSN("Deseja registrar a nova receita?", "Digite um valor valido")){
        proporcaoCafes.add(igrediente);
        print("Registrei ${nome} como o nome do café:");
        nomesCafes.add(nome);
      }
    }
    }else{
      int local = nomesCafes.indexOf(nome);
      print(imagemCafe(proporcaoCafes[local]));
    }
  }
}




List criandoCafe(){
  List conteudoCafe = [];
  double soma = 100;
  for (var i = 0; i < 5; i++) {
  print("Qual a porcentagem de ${igredientes[i]} na receita?");
  double igrediente = repeteImputInt("double");
  print("Confirme o pedido com um enter, do contrário, digite qualquer coisa diferente de enter");
  String repeticao = stdin.readLineSync().toString();
  if (repeticao != ""){
    print("Repetindo\n");
    print(muitasLinhas());
    i--;
  }else{
    soma -= igrediente;
    
    if (soma < 0){
      
      if ((soma).isNegative){
        igrediente += soma; //Para ele não estourar o limite imposto
      }
      print("Você atingiu a cota de 100%, não há espaço para outros igredientes");
      conteudoCafe.add(igrediente);
      for(var falta=(igredientes.length - i); falta >1; falta--){
        conteudoCafe.add(0.0);
      }
      break;
    }else{
      print(muitasLinhas("Restam $soma % de espaço"));
    }
    conteudoCafe.add(igrediente);
    } 
  }    
  return(conteudoCafe);    
}

String meDaNome () => (stdin.readLineSync().toString());



meusCafes(bool criando){ 

  if (criando){
    return([...criandoCafe()]);

  }else{
    return(registrando());
  }
}


void main (){
  print("Me dá um café, moço?\n");

  print("\n'Missão: crie o cafezinho'");
  //*Leite
  //*café
  //*açucar

  var pedidoCliente = meusCafes(false);
  // print(pedidoCliente);

  // print(nomesCafes);
  // print(proporcaoCafes);


  // print(proporcaoCafes.contains([34.0,0.0,0.0,2.0,64.0]));

  print(igredientes);
  print(proporcaoCafes);

}

// Function somaQRetornasoma(int numero1){ 
//   return(int numero2){                  
//     return numero1+numero2;
//   };
// }