// Crie um programa que contenha a seguinte lista: 'Rodrigo Rahman|35', 'Guilheme Rahman|10', 'João Rahman|20','Joaquin Rahman|25','Luan Rahman|23'.Ele deve remover os 2 últimos paciente da lista
// E imprimir o nome dos restantes da seguinte forma: Rodrigo Rahman tem 35 anos

void main (){
  List <String> pacientes = ['Rodrigo Rahman|35', 'Guilheme Rahman|10', 'João Rahman|20','Joaquin Rahman|25','Luan Rahman|23'];
  pacientes.removeRange((pacientes.length-2), pacientes.length);
  for (var paciente in pacientes){
    var dados = paciente.split("|");
    print("O paciente ${dados[0]} tem ${dados[1]} anos");
  }
}