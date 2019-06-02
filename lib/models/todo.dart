import 'package:flutter/material.dart';

class Todo {
  String title;
  bool completed;

  Todo({@required this.title, this.completed = false});

  void toggleTodo() {
    completed = !completed;
  }
}
