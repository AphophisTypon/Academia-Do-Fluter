// Faça um programa que leia placas de transito dentro de um bairro de 20 pessoas, com o intuito de analisar delitos e fraudes, 
// isto é: verificar se as que existem em circulação num dia estão registradas e se respeitam os rodizios.

// Rodio segue os seguintes modelos de carros:

//! ABCD -> letras do alfabeto ocidental
//! xxxx -> numeros de 0 a 9 (10 digitos)

// ABC - XXXX 
// ABC X D XXX 

// Final de placa - dia da semana

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//! elementAt(*indice)
//Desse jeito, ele procura o valor no indice do set
//! difference()
///Uma forma de verificar os valores dento do Set, ele realça os valores do primeiro Set, que não existem no segundo
//!intersection(); 
//Quais os valores que repetem entre os sets
//!union(); Set1 +Set2 => Set1,2
//Unem os sets, mas sem ocorrencia de repetição de valores 
//!lookup(*elemento especificado );
//Retorna o elemento especificado, se ele existir no set; do contrário tem como retorno nulo

import 'ferramentas.dart';

///Placas não podem repetir, mas os valores internos podem

///O programa vai gerar um número de placas entre 20 a 35, que representam os carros em circulação. VFai analisar os valores e ver quais não estão registradas e quais não seguem as regulações 

analisadorMultas(String placa){
  List placas = ["1,2","3,4","5,6","7,8","9,0"];
  String finalDPlaca = placa[(placa.length) -1];
  Set multados = new Set();
  
  if (placas[diasDaSemana(true)].contains(finalDPlaca)){
    multados.add(placa);
    return(placa);
  }
  

// 1 e 2 - das 20h de segunda-feira 
// 3 e 4 - das 20h de terça-feira 
// 5 e 6 - das 20h de quarta-feira 
// 7 e 8 - das 20h de quinta-feira 
// 9 e 0 - das 20h de sexta-feira 


  // return(multados);
  
}

geradorPlacas (){
  List placa = [];
  alfabeto; //Variavel tipo global que eu criei em um documento chamado ferramentas 
  
  String pegaLetra (){ //Gera valores, por isso não recebe parâmetros 
    int posicao = ferramentasRNG(alfabeto.length);
    
    String letraAleatoria = alfabeto.elementAt(posicao);
    return(letraAleatoria.toUpperCase());
  };

  int pegaNumericos () => ferramentasRNG(10);

  int novoMerco = ferramentasRNG(11);

  if (novoMerco >= 9){
    
    for (var i = 0; i < 3; i++) {
      placa.add(pegaLetra());
    }
    for (var i = 0; i < 1; i++) {
      placa.add(pegaNumericos());
    }
    for (var i = 0; i < 1; i++) {
      placa.add(pegaLetra());
    }
    for (var i = 0; i < 2; i++) {
      placa.add(pegaNumericos());
    }
  }else{
    for (var i = 0; i < 3; i++) {
      placa.add(pegaLetra());
    }
    for (var i = 0; i < 4; i++) {
      placa.add(pegaNumericos());
    }
  }
  return(placa.join());
}

void main (){
  dynamic dia = DateTime.now();
  
  Set <dynamic> placasRegistradas = {"GWT1366", "TCA0587", "QAW4373", "HKQ8815", "IRU7231", "ELV9165", "HXR0945", "WGP4T36", "IYC9487", "OHQ2792", "JBT2O71", "LNZ0482", "FSW6P26", "PKN5817", "CYY7731", "YQG3997", "NKZ3920", "QES5925", "CXF6390", "BBM5785"};
  
  Set <dynamic> placasCirculantes = Set <dynamic> ();

  //! numero máximo é de 34, pois 0 também faz referencia a algum valor.
  
  int todosOsCarros = ferramentasRNG(35);
  todosOsCarros = limitaValor(todosOsCarros,35,20); //Um valor de 20 a 35 placas por dia

  
  int carrosCirculandoRegistrados = ferramentasRNG(15);
  carrosCirculandoRegistrados = limitaValor(carrosCirculandoRegistrados, 15,10); //O minimo de registrados circulantes é 10, o máximo 15

  int carrosForasteiros = todosOsCarros - carrosCirculandoRegistrados;

  do{
    String placaCapturada = geradorPlacas();
    if(placasRegistradas.lookup(placaCapturada) == null){
      placasCirculantes.add(placaCapturada);
    }
    
  }while(placasCirculantes.length != carrosForasteiros);

  do{
    
    //Gera placas diferentes até que o comprimento atija os requesitos de "20 pessoas em um bairro"
    int placaNumeroX = ferramentasRNG(carrosCirculandoRegistrados);

    placasCirculantes.add(placasRegistradas.elementAt(placaNumeroX));
    
  }while(placasCirculantes.length != todosOsCarros);

Set multados = Set();
  for (var placa in placasRegistradas) {
    if(analisadorMultas(placa) != null){
      multados.add(placa);
    }
  }

  print("Das 20 placas registradas, ${carrosCirculandoRegistrados} estavam em circulação hoje, e as outras ${carrosForasteiros} eram carros de outros bairros\nOu seja: ${todosOsCarros} carros circularam hoje");
  print("\nAs Registradas do dia ${diasDaSemana(false)} foram:");
    print((placasCirculantes.intersection(placasRegistradas)));
  print("\nAs placas não registradas foram");
    print(placasRegistradas.difference(placasCirculantes));

  print("\nOs que não repeitaram o rodizio de hoje, ${diasDaSemana(false)}, foram:");
 print(multados);
}