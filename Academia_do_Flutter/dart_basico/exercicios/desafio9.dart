///Faça um pequeno horóscopo de signos, dizendo que signo a pessoa é, levando em conta sua data de nascimento
//
//*Referência:
//! maximo de 31 dias e 12 meses
//List signos = [[["Aries"],["21/03","20/04"]], [["Touro"],["21/04","20/05"]], [["Gemeos"],["21/05","20/06"]], [["Cancer"],["21/06","22/07"]], [["Leao"],["23/07","22/08"]],[["Virgem"],["23/08","22/09"]], [["Libra"],["23/09","22/10"]], [["Escorpiao"],["23/10","21/11"]], [["Sagitario"],["22/11","21/12"]], [["Capricornio"],["22/12","20/12"]],[["Aquario"],["21/01","18/02"]], [["Peixes"],["19/02","20/03"]]];
//
///Áries: de 21 março a 20 abril
///Touro: de 21 abril a 20 maio
///Gêmeos: de 21 maio a 20 junho
///Câncer: de 21 junho a 22 julho
///Leão: de 23 julho a 22 agosto
///Virgem: de 23 agosto a 22 setembro
///Libra: de 23 setembro a 22 outubro
///Escorpião: de 23 outubro a 21 novembro
///Sagitário: de 22 novembro a 21 dezembro
///Capricórnio: de 22 dezembro a 20 janeiro
///Aquário: de 21 janeiro a 18 fevereiro
///Peixes: de 19 fevereiro a 20 março

//!List <String> signos = ["Aries", "Touro", "Gemeos", "Cancer", "Leao", "Virgem", "Libra", "Escorpiao", "Sagitario", "Capricornio", "Aquario", "Peixes"];

///21 março a 20 abril, 21 abril a 20 maio, 21 maio a 20 junho, 21 junho a 22 julho, 23 julho a 22 agosto, 23 agosto a 22 setembro, 23 setembro a 22 outubro, de 23 outubro a 21 novembro, 22 novembro a 21 dezembro, 22 dezembro a 20 janeiro, 21 janeiro a 18 fevereiro, 19 fevereiro a 20 março


//List signos = [[["Aries"],["21/03","20/04"]], [["Touro"],["21/04","20/05"]], [["Gemeos"],["21/05","20/06"]], [["Cancer"],["21/06","22/07"]], [["Leao"],["23/07","22/08"]],[["Virgem"],["23/08","22/09"]], [["Libra"],["23/09","22/10"]], [["Escorpiao"],["23/10","21/11"]], [["Sagitario"],["22/11","21/12"]], [["Capricornio"],["22/12","20/12"]],[["Aquario"],["21/01","18/02"]], [["Peixes"],["19/02","20/03"]]];


import "dart:io";
void main(){
  // print("Digite o dia e mes de seu nascimento, respectivamente, direi o seu signo");
  List  signos = [[["Aries"],["21/03-20/04"]], [["Touro"],["21/04-20/05"]], [["Gemeos"],["21/05-20/06"]], [["Cancer"],["21/06-22/07"]], [["Leao"],["23/07-22/08"]],[["Virgem"],["23/08-22/09"]], [["Libra"],["23/09-22/10"]], [["Escorpiao"],["23/10-21/11"]], [["Sagitario"],["22/11-21/12"]], [["Capricornio"],["22/12-20/01"]],[["Aquario"],["21/01-18/02"]], [["Peixes"],["19/02-20/03"]]]; 
  //!/List  signos = [[["Aries"],[[21,3],[20,4]]]];
  print("=================== Saiba agora o seu signo ===================");
  print("Digite o dia de seu nascimento");
  dynamic dia = stdin.readLineSync().toString();
  print("Digite o mês de seu nascimento: ");
  dynamic mes = stdin.readLineSync().toString();
  
  String meuSigno = "";  

  var saida = false;

  if (dia.length < 2){
    dia = ("0$dia");
  }else if(dia.length > 2){
    print("A operação será invalida, pois não existe dia $dia no calendário");
    saida = true;
  }else if(int.parse(dia)> 31 || int.parse(dia)<=0){
    print("A operação é invalida, pois $dia não existe no calendário");
    saida = true;
  }

 if ((int.parse(mes)> 12 || int.parse(mes) <=0)){
    saida = true;
    print("A operação será invalida, pois não existe mes $mes no calendário");
   } else if(mes.length < 2 == true && mes[0] !=0){
    mes = ("0$mes");
  }  
    
  if (saida == false){
    List nascimento = [int.parse(dia),int.parse(mes)];
    
    
    print("---=--=-=-");
    for (var signo in signos){
   
    
      for (var x in signo[1]){

        
        int checaDiaAntes = int.parse((x.substring(0,2)));
        int checaMesAntes = int.parse(x.substring(3,5));
        
        int checaDiaDepois = int.parse((x.substring(6,8)));
        int checaMesDepois = int.parse(x.substring(9,11));

        if (nascimento[0] >=checaDiaAntes && nascimento[1] == checaMesAntes){
          meuSigno = ("${signo[0]}"); 
        } else if(nascimento[0] <=checaDiaDepois && nascimento[1] == checaMesDepois){
          meuSigno = ("${signo[0]}");       
        }
      }    
    }
  print("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");
  print("EU SEI QUAL É O SEU SIGNO");
  print("----${meuSigno}----");
  print("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");
  }
  else{
    print("Você tornou a operação invalida, por favor, revise seus inputs");
  }
}

//?versão previamente funcional
//  if (mes.length >2 && mes[0] != "0"){
//     saida = true;
//     print("A operação será invalida, pois não existe mes $mes no calendário");
//     }else if(int.parse(mes)> 12 || int.parse(mes) <=0){
//     print("O atual modelo de calendáriosw impossibilita $mes");
//     saida = true;
//   } else if(mes.length < 2 == true && mes[0] !=0){
//     mes = ("0$mes");
//   }  