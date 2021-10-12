//import 'dart:convert';

//import 'package:http/http.dart' as http;

void main() {
  //Tratamento de erro
  print(stringToInt('d'));
}

int stringToInt(String text) {
  int value;
  try {
    value = int.parse(text);
  } catch (e) {
    throw Exception('O texto passado ($text) não é um número');
  }
  return value;
}

//---------------------------------------

// Future main() async {
//   final todo = await fetch();
//   print(todo.toJson());
// }

// Future<ToDo> fetch() async {
//   var url = 'https://jsonplaceholder.typicode.com/todos/1';
//   var response = await http.get(Uri.parse(url));
//   var json = jsonDecode(response.body);
//   var todo = ToDo.fromJson(json);
//   return todo;
// }

// class ToDo {
//   final String title;
//   final int id;
//   final int userId;
//   final bool completed;

//   ToDo(this.title, this.id, this.userId, this.completed);

//   factory ToDo.fromJson(Map json) {
//     return ToDo(json['title'], json['id'], json['userId'], json['completed']);
//   } //Mapear o Json

//   Map toJson() {
//     return {
//       'title': title,
//       'id': id,
//       'completed': completed,
//       'userId': userId,
//     };
//   } //Transforma em Json
// }