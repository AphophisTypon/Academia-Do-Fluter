

void main(){


  var numeros = List.generate(10, (index) => index);
  int indice = 7;


  for (int i=0; i<numeros.length; i++){      ///Opções mais inteligentes recaem neste for
    if (i==5){
      print("${i}");
      break;
    }
    if (i==3){
      continue;
    }
    print(numeros[i]);
  }
  print("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");
  for(var valor in numeros) { //Coisas mais fundamentais se adequam a este tipo de for
    print(valor);
    if (valor == indice){
      print("Valor de referencia encontrado: $valor");
      break;
    }
  }


  print("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");

}