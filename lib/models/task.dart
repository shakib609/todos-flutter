import 'package:flutter/material.dart';

class Task {
  String title;
  bool completed;

  Task({@required this.title, this.completed = false});

  void toggleCompleted() {
    completed = !completed;
  }
}
