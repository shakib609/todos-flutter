import 'dart:collection';

import 'package:flutter/material.dart';

import 'package:todos/models/todo.dart';

class TodosModel extends ChangeNotifier {
  final List<Todo> _todos = [];

  UnmodifiableListView<Todo> get allTodos => UnmodifiableListView(_todos);
  UnmodifiableListView<Todo> get incompleteTodos =>
      UnmodifiableListView(_todos.where((todo) => !todo.completed));
  UnmodifiableListView<Todo> get completeTodos =>
      UnmodifiableListView(_todos.where((todo) => todo.completed));

  void addTodo(Todo todo) {
    _todos.add(todo);
    notifyListeners();
  }

  void toggleTodo(Todo todo) {
    final todoIndex = _todos.indexOf(todo);
    _todos[todoIndex].toggleTodo();
    notifyListeners();
  }

  void deleteTodo(Todo todo) {
    _todos.remove(todo);
    notifyListeners();
  }
}
