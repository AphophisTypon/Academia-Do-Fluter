// Crie um programa que também contenha a lista:
// 'Rodrigo Rahman|35', 'Guilheme Rahman|10', 'João Rahman|20','Joaquin Rahman|25','Luan Rahman|23'.
// O programa deve remover da lista os pacientes menores de idade (18 anos)
// Imprimir o nome destes como: Rodrigo Rahman tem 35 anos
 
void main (){
  List <String> pacientes = ['Rodrigo Rahman|35', 'Guilheme Rahman|10', 'João Rahman|20','Joaquin Rahman|25','Luan Rahman|23'];
  for (var index=0; index<pacientes.length;index++){
    print("-=-=-=-=");

    if ((int.parse(pacientes[index].substring(pacientes[index].length-2))) < 18){
      print("O paciente ${pacientes[index].substring(0,pacientes[index].length-3)} é menor de idade, estão será apagado do banco de dados.");
      pacientes.removeAt(index);
    }else{
      var dados = (pacientes[index]).split("|");
      print("O paciente ${dados[0]} tem ${dados[1]} anos");
    
    //print("${index} <-> ${pacientes[index]}");
    }

  }
}