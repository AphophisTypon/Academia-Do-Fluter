

//*Ordem de execução do programa
// try -  codgio a ser verificado em busca de resultados 
// throw - força o programa a levantar um erro, mesmo que ele não seja "identificado"
// on - dá resultados mais especificos, de acordo com o tipo de excessão especificada
// catch - procura por erros genericos  dentro do código
// finally - vai ser executado, independente de se ocorrer erros ou não



import 'dart:io';

main (List <String> args){
  
  Set nulado = Set();
  nulado.add(null);

  int endereco =4;
  dynamic erroTransormacao = "123e";

  try {
    String valor = nulado.elementAt(0);  
    valor.toUpperCase();
    //////////////////////////////////
    //////////////////////////////////
    //////////////////////////////////
 
    // String abc = "abc";
    // bool hackeado = true;
    // print(abc[endereco]);
    // if (hackeado == true){
    //   throw Exception('Você foi hackeado, KKKK');
    // }
      
    
  HttpException("message");

  }on RangeError catch(e,s){
    print("O valor $endereco não é valido ao tamanho da lista, por isso");
    print("$e\n $s");

  }on Exception catch(s,e){
    print("Erro de Exception");
    print("$e\n $s");

  }catch(e,s){
    print("Exception Generica, não há alcance até ${endereco}\nPor isso $e");
    print("Histórico $s");
  
  }finally{
    print("+"*30+"\nCoisas que devem ser feitas, indeendente de dar certo ou não");
  }

  // try{
  //   int numero = int.parse(erroTransormacao);
  //   print(numero);
  // } on FormatException catch(e,s){
  //   print("O valor $erroTransormacao não pode virar int, pois tem valores do alfabeto\nTire os valores que não são numéricos");
  // print(e);
  // }
  
  
  // catch(e,s){
  //   print("Revise a sua logica:\n$e, ");
  //   print("ocorreu na linha $s");
  // }



}