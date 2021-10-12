// import 'package:api/src/controllers/home_controller.dart';
// import 'package:api/src/models/todo_model.dart';
// import 'package:api/src/repositories/todo_repository.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';

// class ToDoRepositoryMock extends Mock implements ToDoRepository {}

// main() {
//   final repository = ToDoRepositoryMock();
//   final controller = HomeController(repository);
//   test('deve preencher variavel todos', () async {
//     when(repository.fetchTodos()).thenAnswer((_) async => [ToDoModel()]);

//     expect(controller.state, HomeState.start);
//     await controller.start();
//     expect(controller.state, HomeState.sucess);
//     expect(controller.todos.isNotEmpty, true);
//   });

//   test('deve modificar o estado para error se a requisição falhar', () async {
//     when(repository.fetchTodos()).thenThrow(Exception());

//     expect(controller.state, HomeState.start);
//     await controller.start();
//     expect(controller.state, HomeState.error);
//   });
// }
