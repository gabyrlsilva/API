import 'package:api/src/models/todo_model.dart';
import 'package:api/src/repositories/todo_repository.dart';
import 'package:flutter/material.dart';

class HomeController {
  List<ToDoModel> todos = [];
  final ToDoRepository _repository;
  final state = ValueNotifier<HomeState>(HomeState.start);

  HomeController([ToDoRepository? repository])
      : _repository = repository ?? ToDoRepository();

  Future start() async {
    state.value = HomeState.loading;

    try {
      todos = await _repository.fetchTodos();
      state.value = HomeState.sucess;
    } catch (e) {
      state.value = HomeState.error;
    }
  }
}

enum HomeState { start, loading, sucess, error }
