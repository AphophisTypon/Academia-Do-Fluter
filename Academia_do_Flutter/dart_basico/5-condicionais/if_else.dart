void main(){
  
  num idade = 30;
  
  if (idade == 30){
    print("A idade é igual a ${idade}");
  }

  if (idade == 30)  //Parece que no Dart, também não é essencial o uso de chaves entre as condicionais, mas eu vou manter por via das dúvidas
                    //Ele diz que é uma boa prática
    print(idade);

  else
    print("Como você fez isso?");

  String comida = "arros";
 
  if (comida == "paçoca"){
    print("Aeee sim, comida de verdade : )");
  //Ele dá preferencia ao tratamentop da linha de cima...
  //!É executado quando o resultado da comparação for True
  }else if (comida == "arros"){
    print("Se for o Negro, da mamãe, ai tudo bem");
  }  else {
    print("Como você ousa? Comer ${comida} ao invez de paçoca ?!"); 
  }



}