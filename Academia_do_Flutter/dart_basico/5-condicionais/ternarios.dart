void main(){
  //É possível fazer verificações de if&else em uma única linha!!! Des de ue tenha uma condição comum
String condicao;
int notaUm = 4;
int notaDois = 8;

double media = (notaUm + notaDois)/2;
print(media);
if (media < 6){
  print("Você foi reprovado");
   condicao = "reprovado";
}
else{
  print("VOcê foi aprovado");
   condicao = "aprovado";
}
// ? -> é o mesmo que "então" 
//Simplificado o primeiro

String conlicao = (notaUm+notaDois/2) < 6 ? "reprovado": "aprovado";
print(conlicao);


///* O primeiro, so que mais completo

double notaVUm = 5;
double motaLois = 3;
double pesoUm = 2;
double pesoDois = 1;

double nedia = (pesoUm*notaVUm);
nedia = (pesoUm*notaVUm+pesoDois*motaLois)/(pesoUm+pesoDois);



print((5*2+3*1)/3);
print("----- $nedia");
if (media > 7){
  print("Você foi aprovado");
  condicao = "aprovado";
}
else if(media<7 && media>=6 ){
  print("você está retido");
  condicao = "retido";
}else{
  print("Você foi reprovado");
  condicao = "reprovado";
}
print("condição final ${condicao}");

//Fazendo a mesma coisa usando os ternários
//
String convicao = (pesoUm*notaVUm+pesoDois*motaLois)/(pesoUm+pesoDois) > 7 ? "Aprovado" : (pesoUm*notaVUm+pesoDois*motaLois)/(pesoUm+pesoDois) < 7 && (pesoUm*notaVUm+pesoDois*motaLois)/(pesoUm+pesoDois) >= 6 ? "Retido" : "Reprovado";
print("-1-1-1-1-1-1-1-1-1-1-1-1-1");
print(convicao);

//Acabei de experimentar um baile, também é um dos motivos do por que o Rodrigo não recomenda 
}