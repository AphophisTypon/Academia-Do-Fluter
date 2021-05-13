import 'dart:collection';

void main(){
  SplayTreeSet <int> numerosDSet = SplayTreeSet<int> ();

  numerosDSet.add(1);
  numerosDSet.add(100);
  numerosDSet.add(21);
  numerosDSet.add(9);

  print(numerosDSet);

  //Todos os valores Set seguem o conceito fundamel: não repetir
  numerosDSet.add(1);
  numerosDSet.add(1);
  numerosDSet.add(1);
  numerosDSet.add(1);
  numerosDSet.add(1);

  print(numerosDSet);

  //!mas estes não conseguem segurar valores nulos, pois valores nulos não podem receber comparações, muito menos comparações referentes a ordem numerica

  // dynamic valorNulo = null;

  // numerosDSet.add(valorNulo); //*Vai dar caca

  
}