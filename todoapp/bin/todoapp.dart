import 'dart:io';

var todoMap = <String, bool>{};

void addTodo({required String texto}){
  try{
    todoMap[texto] = false;
  } on Exception catch (e){
    print("ERROR: $e");
  }
}

void delTodo(String texto){
  try{
    todoMap.remove(texto);
  } on Exception catch (e){
    print('ERROR: $e');
  }
}

void editTodo(String texto, bool feito){
  try{
    todoMap[texto] = feito;
  } on Exception catch (e){
    print('ERROR: $e');
  }
}

void listaTodo(){
  todoMap.forEach((texto, feito) { 
    print('\n $texto: $feito');
  });
}

void main(List<String> arguments) {  
  print('Digite o Texto');
  var texto = '${stdin.readLineSync()}';
  addTodo(texto: texto);
  listaTodo();
  editTodo(texto, true);
  listaTodo();
  delTodo(texto);
  listaTodo();
}

