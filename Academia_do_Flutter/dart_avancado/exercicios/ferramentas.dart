import 'dart:io';
import 'dart:math';

diasDaSemana(bool desejaNumero){
  List semana = ["segunda","terça","quarta","quinta","sexta","sabado","domingo"];
  DateTime dia =  DateTime.now();
  int data = (dia.weekday) -1 ;
  if (desejaNumero){
    return(data);
    
  }else{
    
    return(semana[data]);
  }
}

Map modeladorMap(List chaves){
  Map retono = new Map();
  for (var i = 0; i < chaves.length; i++) {
    print("De o valor para ser inserido como ${chaves[i]}");
    String Insersao = stdin.readLineSync().toString();
    
    retono.putIfAbsent("${chaves[i]}", () => Insersao);
  }
  return(retono);
}




const Set <String> alfabeto = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"};

int ferramentasRNG (int limite)=> Random().nextInt(limite);

bool fazSN(String questionamento, String exigencia){
  //Na aba questionamento, escreva ao o que se refere a função 
  do{
    print(questionamento);
    print("S - sim||N- não");
    String pergunta = stdin.readLineSync().toString().toLowerCase();
    if (pergunta == "s"){
      return(true);
    }else if (pergunta == "n"){
      return(false);
    }else{
      print(exigencia);
      print("S - sim||N - não");
    }
  }while(true);
}

dynamic estaDentroDeInt(num valorAnalise, num MenorLimite,num MaiorLimite){
  bool oQueDEu;
  if (valorAnalise > MaiorLimite){
    oQueDEu = false;
  }else if (valorAnalise< MenorLimite){
    oQueDEu = false;
  }else{
    oQueDEu = true;
  }
  return(oQueDEu);
}

dynamic estaDentroDaString(String oQueE, String queDeveSer,String naoPodeSer){
  bool oQueDEu;
  if (oQueE == queDeveSer){
    oQueDEu = true;
  }else if (oQueE == naoPodeSer){
    oQueDEu = false;
  }else{
    oQueDEu = false;
  }
  return(oQueDEu);
}

 limitaValor(num analiseEsse, num naoMaiorq, [num naoMenorQ = 0]){
//Se o valor estourar, ele será forçado pra baixo ou para cima

  if(analiseEsse >= naoMaiorq){
    return(naoMaiorq);
  }else if(naoMenorQ != 0 && naoMenorQ > analiseEsse){
    return(naoMenorQ);
  }else{
    return(analiseEsse);
  }
}

repeteImputInt(String tipoDerestricao, [dynamic precisamudar = ""]){
// Exige o imput do usuário infinitamente, até se adequar as condições exigidas
  const List tiposDisponiveis = ["String","int","double"];
  if(tiposDisponiveis.contains(tipoDerestricao) == false){
    return(null);
  }else{
    
    if(tipoDerestricao == "String"){
      do{
        dynamic imput = stdin.readLineSync().toString();
        if (double.tryParse(imput) != null){
          print("Erro, digite um valor valido ao tipo String");
        } else{
          return(imput);
        }
      }while(true);
    }else if (tipoDerestricao == "int"){
      do{
        dynamic imput =  stdin.readLineSync();
        if (int.tryParse(imput) != null){
          return(int.tryParse(imput));
        }else{
          print("O valor imputado não corresponde ao tipo exigido, (int)");
        }
        }while(true);
    }else{
      do{
        dynamic imput =  stdin.readLineSync();
        if (double.tryParse(imput) != null){
          return(double.tryParse(imput));
        }else{
          print("O valor imputado não corresponde ao tipo exigido, (double)");
        }
      }while(true);

    }
  }
}

String muitasLinhas ([String colocaNoMeio=""]){
  if (colocaNoMeio == ""){
    return("-="*14);
    }else{
      int tamanhoReduzido = colocaNoMeio.length~/2;
      
      int tamanhoReal = colocaNoMeio.length;
      return("${"-="*(tamanhoReal+1)}\n ${" "*tamanhoReduzido}$colocaNoMeio" "\n${"-="*(tamanhoReal+1)}\n");
    }
  }
  
List NonRepete(List antes){
  ///Me aproveito do comportamento não repetiivo dos Sets
  Set base = Set();
  for (var i = 0; i < antes.length; i++) {
    base.add(antes[i]);
  }
  base.toList();
  return([...base]); //Repasso uma coisa para ele não ficar fazendo relações indesejadas
}

///Função que analisa elementos de lista e retorna ela ordenada de acordo com algum parámetro especificado


void main(){
  int minhaIdade = 18;
  int nasciCom = 4000;

  List muitasCoisas = [1,4,3,2,1,1,3,4,5,2,1,1,4,5,1];
  print(NonRepete(muitasCoisas));

//   int possobeber = 18;

  // print(limitaValor(minhaIdade, nasciCom));

  // print(repeteImputInt("String"));
  // print(repeteImputInt("int"));
  // print(repeteImputInt("double"));
  
  print(muitasLinhas("abcd"));
  print(muitasLinhas("bandeja"));

  bool gostar = fazSN("Você gosta de morangos", "você não me disse se gosa de morangos");
  print(gostar);
  
}

