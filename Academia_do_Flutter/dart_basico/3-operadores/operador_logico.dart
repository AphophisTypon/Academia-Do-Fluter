void main() {

  //Operadores Lógicos:
  //* (&& ->(e)) - precisa que todas as partes executadas resultem true ou false (operador boleano)
print("----------------------------------------");
print("SObre o (&&)/ e");
print("----------------------------------------");
print(true && true); //Se as duas partes forem verdadeiras, exibe True; melhor dizendo, tudo deve ser True
print(false && true);

print((2+2 == 4) && (3+3 ==6)); // Também, funciona como um pequeno validador "portatil".
int idade = 18;
String sexo = "Masculino";
if (sexo == "Masculino" && idade == 18){
  print("Provavelmente, é o heitor");
  }
idade = 20;
if (sexo == "Masculino" && idade == 20){
  print("Provavelmente, não é o heitor");
  }
  //? (|| ->(ou)) - 
print("----------------------------------------");
print("Sobre o (||)/ Ou");
print("----------------------------------------");

String animal = "cachorro";
String condicao = "hexotermo";

if (animal == "cachorro" || condicao == "hexotermo"){
  print("Eu acho que é mamifero");
  }
if (animal == "cachorro" || condicao == "hexano" || idade == 12){
  print("peloo menos 2 de 3 deles pode ser falso");
  }
if (animal == "cabra" || condicao == "hexotermo" || idade == 20){
  print("pelo menos 1 de 3 deve pode ser falso");
  }
print( (2 + 1 == 4) || (4+11 == 10) || (1+1 == 2)); // Um dos valores podem ser true, e o programa irá exibir True, como resultado.
print( (2 + 1 == 4) || (4+6 == 10));

//! (! -> não é) - Se um dos valores der como false, tudo será exibido como true. Verifica se não é, inverte o negócio.
print("----------------------------------------");
print("Sobre o (!)/não é");
print("----------------------------------------");
print(1+1 != 3);
print(!(idade == 20 || animal == "cacorro")); // É o oposto dfo "ou", se uma uníca condição for verdadeira, 
                                              //terá como retorno false. Caso todas sejam opositoras, sera true
//Basicamnete, inverte a condição
}
