import 'dart:collection';

void main (){
  Set SetAlfabeto = new Set();

  SetAlfabeto.add("A");
  SetAlfabeto.add("B");
  SetAlfabeto.add("C");
  SetAlfabeto.add("D");
  SetAlfabeto.add("E");
  

  print(SetAlfabeto);

  HashSet <String> SetTachado = HashSet<String>();
  //Ele adiciona os valores de forma "desordenada", isto é, da forma que o programa preferir

  SetTachado.add("A");
  SetTachado.add("B");
  SetTachado.add("C");
  SetTachado.add("D");
  
  //A mesma regra da impedancia de repetição se aplica neste tipo de Set
  SetTachado.add("A");
  SetTachado.add("B");
  SetTachado.add("C");
  SetTachado.add("D");
  print(SetTachado);

  HashSet <int> SetTachadoNumerico = HashSet<int>();

  SetTachadoNumerico.add(0);
  SetTachadoNumerico.add(1);
  SetTachadoNumerico.add(2);
  SetTachadoNumerico.add(3);
  SetTachadoNumerico.add(4);

  //Tanto para itn quanto para String
  SetTachadoNumerico.add(1);
  SetTachadoNumerico.add(2);
  SetTachadoNumerico.add(3);
  SetTachadoNumerico.add(4);
  
  //Ele tolera adições posteriores

  SetTachadoNumerico.add(5);
  SetTachadoNumerico.add(6);
  SetTachadoNumerico.add(7);
  SetTachadoNumerico.add(8);
  SetTachadoNumerico.add(9);

print(SetTachadoNumerico);
  //Ele mantem ordenado quando vai de 1 a 9, ao passar disso ele começa a mexer em algumas coisas.S

  HashSet <int> coisasMaiores = HashSet<int>();

  coisasMaiores.add(10);
  coisasMaiores.add(11);
  coisasMaiores.add(22);
  coisasMaiores.add(156);
  coisasMaiores.add(94);
  // SetTachadoNumerico.add(24);

print(coisasMaiores); //Quando fica muito grande: começa a ordenar do "jeito que ele quer"
}