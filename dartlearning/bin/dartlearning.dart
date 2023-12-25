// Só irei anotar o que acho diferende

// Null off
// TIPOS :
// caso você não sabe qual o valor essa variavel ira receber apenas declare ela,
//mas o Null tem que esta on.
// String name;

// ignore_for_file: unnecessary_this

// Caso você ja saiba o valor que ela ira receber, voce pode fazer isso
String name = 'Guilherme';
// mas uma forma melhor é utilizar o var.
var name2 = 'Guilherme';
// pois quando você foir fazer isso
// LoginController controller = LoginController()
// você faz isso
// var controller = new LoginController()
// que é muito mais facil de ler e entender.

// tambem temos o tipo dynamic

dynamic test = 184.09;

// ele pode ser qualquer coisa

// Para uma constante (const) apenas utilizar 'final'

final name3 = 'Guilherme';
const name4 = 'Guilherme';

// voltando o assunto para a função main, é obrigatório ter uma main func caso,
// voce queira executar algo naquele arquivo

// existe varios tipos de main
// void main():
//void main() {
// quando usado o void, você fala para o dart que essa func não irá retornar nada
//}

// main() / dynamic main()

//main2() {}

//dynamic main3() {}

// o o dart ele vai tentar adivinhar o tipo que ele vai retornar

// tem tambem o int String, que nem precisa falar. E isso se aplica tambem as func

// FUNÇÔES

// os parametros podem ser dynamic, apenas deixando eles sem tipos explicitos

// para dedixar ele opcionais é apenas utilizar []
// voce pode deixar ele nullable apenas adicionando '?' depois do tipo

// tem tambem parametro nomeado utilizando {} em todos os parametros
// de padrão todos os parametros nomeados ele podem ser null.
// ao inves de utilizar o return posso utilizar =>
// desta forma

int sum({required int n1, required int n2}) => n1 + n2;
// mas aqui estamos somar n1 + null (que não é possivel), temos 2 opções
// primeira: o operador ?? significa se for null
// return n1 + (n2 ?? 3); OU
// nos parametros eu faço isso sum(int n1, [int n2 = 5])

main() {
  var n = sum(n1: 1, n2: 2);
  print(n);
}

// CLASS
// sealed/ final class: A classe nao pode ser herdada
// immutable: os valores nao podem ser alterado{
// para isso deve ser colocado um final antes das variaveis
// }
class UserModel {
  String? firstName;
  String? lastName;
  String? fullName; // neste caso o fullname é um valor computado, então

  UserModel(this.firstName, this.lastName) : fullName = '$firstName $lastName';

  UserModel.fromJson(Map json)
      : firstName = json['firstName'],
        lastName = json['lastName'],
        fullName = json['fullName'];
}
