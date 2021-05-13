// Crie um programa que leia: o nome, ano de nascimento e a carteira de trabalho para alguém. Ela deve calcular a idade da pessoa. E caso tenha CTPS,
// o programa deve receber o ano em que começou a trabalhar, o salário da pessoa e calcular qual a idade pela qual a pessoa irá aposentar 
// (ela deve contribuir por 35 anos).

import "ferramentas.dart";
import 'dart:io';


//Todo: Falta calcular o resultado 


analiseDaCarteira(bool CTPS, int ano){
  bool cancela = false;
  transformaEmInt(valorEmString) => (int.parse(valorEmString));
  transformaEmDouble(valorEmString) => (double.parse(valorEmString));
  double valorAreceber = 0;
  
  if (CTPS == true){
    

    print("Digite o seu nome");
    String nome =  stdin.readLineSync().toString();

    print("\nInforme o seu ano de nascimento");
    dynamic nascimento = stdin.readLineSync();
    nascimento = transformaEmInt(nascimento);

    nascimento = ano - nascimento;

    if ((estaDentroDeInt(nascimento,18,(122 + (2.7*ano)/1000))) == false){
      print("\nUm valor imputado está deesejustado:${nascimento}\n${ano}");
      cancela = true;
    }
    //Pessoa mais velha registrada teve 122 anos, então não pode ter mais do que 122+ 2.7* a decada

    print("\nQual a MÉDIA do seu salário nos últimos anos?");
    dynamic mediasalario = stdin.readLineSync();
    mediasalario = transformaEmDouble(mediasalario);
    
    print("\nPor quantos anos (em escala decimal) você contribuiu");
    dynamic contribuicao = stdin.readLineSync();
    contribuicao = transformaEmInt(contribuicao);
    if ((estaDentroDeInt(contribuicao, 0, nascimento-18)) == false){
      print("VocÊ não pode retirar o INSS sem documentos viáveis (18 anos)");
      cancela = true;
    }
    
    if (cancela == true){
      print("\nTente Novamente\n");
    }else{
      while (true){
        print("\nQual o sua combinação genica?\nF -> Feminino||M -> Masculino");
        dynamic sexo = stdin.readLineSync().toString().toUpperCase();
        
        if (sexo == "M"){
          
          
          // !contribuição se mantem
        
          if ((contribuicao - 20).isNegative){
            print("Você não poderá receber o seu benefício, pois ainda não atingiu o minimo de 20 anos de contribuição\nFaltam ${contribuicao - 20}");
            break;
          } else{
            
            
            print("${nome}Você contribuiu por ${contribuicao} anos");
            contribuicao = limitaValor(contribuicao - 20, 20);
            print("\nSeu retorno será de ${(60 + (contribuicao)*2)}% porcento do seu salário pago");
            contribuicao = (60 + (contribuicao)*2);
            print(contribuicao);
          
            valorAreceber = (contribuicao, mediasalario){
              double aposenta = (mediasalario)*(contribuicao/100);
          
              return(aposenta); // Só para ficar mais "visivel", poderia facilmente colocar tudo isso aqui
            }(contribuicao, mediasalario);
          
          
          
          }
          break;
        }
        else if (sexo=="F"){ 
          // print("imprevisivel");

          if ((contribuicao - 15).isNegative){
            print("Você não poderá receber o seu benefício, pois ainda não atingiu o minimo de 20 anos de contribuição\nFaltam ${contribuicao - 15}");
            break;
          } else{
            
          //Algo me diz que o valor "media salario", já deveria cobrir a primeira parte da operação... Já que é a soma de todos os salário depreciados por cada aliquota de cada 
          //pagamento ao INSS
          
          // ficava dando problema até eu meter tudo dentro do while, tá funcionando (por enquanto), mas eu já estou feliz : )
            
            print("${nome}, você contribuiu por ${contribuicao} anos");
            contribuicao = limitaValor(contribuicao - 15, 15);
            print("\nSeu retorno será de ${(60 + (contribuicao)*2)}% porcento do seu salário pago"); 
            contribuicao = (60 + (contribuicao)*2);
          
            valorAreceber = (contribuicao, mediasalario){
              
              return(mediasalario)*(contribuicao/100); // Só para ficar mais "visivel", poderia facilmente colocar tudo isso aqui
            }(contribuicao, mediasalario);
          }
          break;
        }else{
          print("Digite um valor válido!");
        
        }
      }
    }
    
  }else{
    print("Você não possui uma carteira de trabalho registrada, você deve ser um divirgente Libertário!");
    valorAreceber = 0;
  }
  return(valorAreceber);
}












void main (){
  dynamic ano  = DateTime.now();
  ano = ano.toString().substring(0,4);
  ano = int.parse(ano);

  print("Você possui CTPS?\nS- sim||N - não");
  while(true){

    dynamic resposta = stdin.readLineSync().toString();
    if (resposta.toUpperCase() == "S"){
      
      print(analiseDaCarteira(true, ano));
      break;
    }else if (resposta.toUpperCase() == "N"){
      analiseDaCarteira(false, ano);
      break;
    }else{
      print("A resposta é invalida, tente novamente\n");
    }
  }
 
  
  // int contribuicao = ano-nascimento;
}

