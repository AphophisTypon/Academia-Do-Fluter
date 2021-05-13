void main (){
  
  String baguio = "aaaA";
  
  String tuti = (String mensagem){
    return(mensagem+"Belha");
  }(baguio);
  
  print(tuti);

  consultarAlgumaCoisa((String nomePaciente){
    print(nomePaciente);
  });
  }

  void consultarAlgumaCoisa(Function callback){
    print("Executando AlgumaCoisa\n");
    String nomePaciente = "Rodrigo Rahman";
    callback((nomePaciente));
  }
