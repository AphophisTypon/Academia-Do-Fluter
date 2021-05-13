// Considerando este modelo de dados: 
// 'Rodrigo Rahman|35|desenvolvedor|SP','Manoel Silva|12|estudante|MG','Joaquim Rahman|18|estudante|SP', 'Fernando Verne|35|estudante|MG', “Gustavo Silva|40|estudante|MG',  'Sandra Silva|40|estudante|MG', 'Regina Verne|35|estudante|MG', 'João Rahman|55|Jornalista|SP'. 
// Crie uma lista que: Mostre a quantidade de pacientes com mais de 20 anos e os agrupe por família(considerar sobrenome), 
// e em seguida apresentar a família e seus membros constituintes.  
void main (){
  List hospital =  ['Rodrigo Rahman|35|desenvolvedor|SP', 'Manoel Silva|12|estudante|MG', 'Joaquim Rahman|18|estudante|SP', 
  'Fernando Verne|35|estudante|MG', 'Gustavo Silva|40|estudante|MG', 
  'Sandra Silva|40|estudante|MG', 'Regina Verne|35|estudante|MG', 'João Rahman|55|Jornalista|SP',"Heitor Carobelli|18|estudante|SP"];

  List <String> maiores=[];
  List registro = [];
  List sobrenome = [];
  for (var cliente=0; cliente<hospital.length;cliente++){  
    List pessoa = hospital[cliente].split("|");
    int idade = int.parse(pessoa[1]);
    pessoa.removeRange(1,pessoa.length);
    dynamic nome = (pessoa[0].split(" "));
    registro = [nome.sublist(1).join(""),nome[0]];

    if (sobrenome.length == 0){
      sobrenome.add(nome.sublist(1).join(""));
      hospital.removeAt(cliente);
      hospital.insert(cliente, registro);
    }else{
      if (sobrenome.contains(nome.sublist(1).join("")) ==false){
        hospital.removeAt(cliente);
        hospital.insert(cliente, registro);
        sobrenome.add(nome.sublist(1).join(""));
      }else{
        hospital.removeAt(cliente);
        int posicao = sobrenome.indexOf(nome.sublist(1).join(""));
        var treco = hospital[posicao];
        hospital.removeAt(posicao);
        treco.add(nome[0]);
        // hospital.insert(sobrenome, na posicao do sobrenome);
        hospital.insert(posicao, treco);
        cliente --; //Como a validação é baseada no numero do comprimento original da lista. Quando eu modifico a lista, e não altero esse cara, o loop acaba 
                      // antes que eu possa terminar de modificatr os dados...
      } 
  }
    if (idade > 20){
      maiores.add(pessoa[0]);
    }
  }
print("-==-"*4);
print("Bom Dia!");
print("-==-"*4);
print("Dentro do sistema de hospitais Arrays.SA, temos as seguintes famílias:\n");
  for (List familia in hospital){
    
    print("A família ${familia[0]}, a qual é constituida pelos membros: ${familia.getRange(1, familia.length)}");
  }
  print("E dentre estes, ${maiores.length} pessoa${((maiores.length) >= 2 ? ("s") : "")} têm mais de 20 anos");
}
