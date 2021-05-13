//Crie um programa contendo a lista: 'Rodrigo Rahman|35', 'Guilheme Rahman|10', 'João Rahman|20','Joaquin Rahman|25','Luan Rahman|23'. 
//Imprimindo o nome de cada paciente como: Rodrigo Rahman tem 35 anos
void main (){
  List <String> consultorio = ['Rodrigo Rahman|35', 'Guilheme Rahman|10', 'João Rahman|20','Joaquin Rahman|25','Luan Rahman|23'];
  for (var paciente in consultorio){
    var receptor = paciente.split("|");
    print("O paciente ${receptor[0]} tem ${receptor[1]} anos ");
  }
}