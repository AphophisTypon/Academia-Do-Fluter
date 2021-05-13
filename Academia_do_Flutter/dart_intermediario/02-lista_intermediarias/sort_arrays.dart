
//sort() || *List-Lista é ordenada

void main (){
  var numero = 14;
  var listaDeSort = [3,6,7,22,13,4,2,4,6,78,54,3,54,76,1000,98,89,76,4,232,1,32,56,8,967,4,33,645];
  print(listaDeSort);
  //Ordenar do menor para o maior
  listaDeSort.sort((a,b){
    if (a < b){
      return (-1);
    }else if (a>b){
      return (1);
    }else{
     return(0);
    }
  });
  print(listaDeSort);
  listaDeSort.sort((n1,n2) => n2.compareTo(n1)); //Agora, vai do menor para o menor

  listaDeSort.sort((n1,n2) => n2.compareTo(numero));//Agora, ele diminui, até chegar no valor de 14, a partir disso, a lista assume uma construção crescente
                                                    //Começa a decrescer até o 14, depois volta a subir, mas usando os valores menores que 13.
  
  print(listaDeSort);
}