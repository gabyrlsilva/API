import 'package:api/src/models/todo_model.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:dio/dio.dart';

class ToDoRepository {
  late Dio dio;
  final url = 'https://jsonplaceholder.typicode.com/todos/';

  ToDoRepository([Dio? client]) : dio = client ?? Dio();

  Future<List<ToDoModel>> fetchTodos() async {
    final response = await dio.get(url);
    final list = response.data as List;

    return list.map((json) => ToDoModel.fromJson(json)).toList();
  }
}
