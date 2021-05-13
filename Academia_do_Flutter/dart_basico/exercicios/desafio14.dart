///Um programa que deve converter as temperatura de medida célsius, kelvim ou Fahrenheit; para as suas contrapartes
///c = (5*(f - 32))/ 9
///c = k-273
///f = (((c*9)/5) +32)
///f = (((9*(k - 273.15))/5) + 32)
///k = ((((F - 32)*5)/9)+(273.15))
///k = c +273.15

import "dart:io";

void main(){
  print("Qual a sua temperatura de referência?");
  print("0 - Celsius\n1 - Fahrenheit\n2 - Kelving");
  dynamic decisao = stdin.readLineSync().toString();
  decisao = int.tryParse(decisao) ?? 999;//!Se le não conseguior fazer o parse, e tiver como resultado nulo, o codigo 999 é evocadop
                                        //Como nenhuma case recebe 999, o programa é cancelado. 
                                        //Assim eu meio que resolvo o problema da str invalida e numero fora de alcance em uma coisa só
  switch(decisao){
    case 0:
      print("Digite a temperatura em graus célsius");
      dynamic temperatura = stdin.readLineSync();
      temperatura = double.tryParse(temperatura) ?? 123.456999; 
      if (temperatura == 123.456999){
        print("Valor invalido");
      }else{
        print("-=-="*12);
        print("REFERENCIA: ºC ${temperatura}");
        print("**************");
        print("Converssões:\n-Fahrenheit---ºF ${(((temperatura*9)/5) +32)}---\n-Kelving  ---K ${temperatura +273.15}---");
      }
      break;
    case 1:
    print("Digite a temperatura em graus Fahrenheit");
    dynamic temperatura = stdin.readLineSync();
    temperatura = double.tryParse(temperatura) ?? 123.456999; //Como o código de cancelamento não pode ser 0, pois temperaturas chergam a zero
      if (temperatura == 123.456999){                         //Então escolhi um vcalor muito específico
      print("Valor invalido");
      }else{
         print("-=-="*12);
        print("REFERENCIA: ºF ${temperatura}");
        print("**************");
        print("Converssões:\n-Celsius  ---ºC ${(5*(temperatura - 32))/ 9}---\n-Kelving  ---K ${((((temperatura - 32)*5)/9)+(273.15))}---");
      }
      break;
    case 2:
    print("Digite a temperatura em Kelving");
    dynamic temperatura = stdin.readLineSync();
    temperatura = double.tryParse(temperatura) ?? 123.456999; //Como o código de cancelamento não pode ser 0, pois temperaturas chergam a zero
      if (temperatura == 123.456999){                         //Então escolhi um vcalor muito específico
      print("Valor invalido");
      }else{
         print("-=-="*12);
        print("REFERENCIA: K ${temperatura}");
        print("**************");
        print("Converssões:\n-Celsius  ---º C${temperatura - 273.15}---\n-Fahrenheit  ---ºF ${((((9*(temperatura - 273.15))/5) + 32))}---");
      }
      break;          
    default:
      print("Valor invalido, cancelando TODA operação");
      break;
  }
}