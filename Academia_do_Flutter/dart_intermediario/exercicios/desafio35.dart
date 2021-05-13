// Crie um programa que analise o comprimento de 3 retas, e determine se elas podem formar um triângulo, e qual o tipo de triângulo.

import 'ferramentas.dart';

void main (){
  List<double>segmentos = [];
  print("Para formar um triângulo, você precisa de 3 segmentos");
  for (var i = 0; i < 3; i++) {
    double segmento = repeteImputInt("double");
    segmentos.add(segmento);
  }
  segmentos.sort((n1,n2) => n1.compareTo(n2));
  double maiorSegmento = segmentos[(segmentos.length) -1];
  double menorSegmento = segmentos[0];

  double somatoria = segmentos.fold( -maiorSegmento, (previousValue, element) => previousValue += element);
  
  if (somatoria <= maiorSegmento){
    print("Eu não consigo formar um triangulo");
  } else{
    print("É possivel formar um triângulo");
    
    if(menorSegmento == maiorSegmento){
      print("Também é um triângulo equilátero");
    } else if(menorSegmento == segmentos[1]){
      print("É um triângulo isoceles");
    } else{
      print("É um triângulo escaleno");
    }   
  }
}