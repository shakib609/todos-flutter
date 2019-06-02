import 'package:flutter/material.dart';

import 'package:todos/models/todo.dart';
import 'package:todos/widgets/todo_list_item.dart';

class TodosList extends StatelessWidget {
  final List<Todo> todos;

  TodosList({@required this.todos});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: todos.map((todo) => TodoListItem(todo: todo)).toList(),
    );
  }
}
