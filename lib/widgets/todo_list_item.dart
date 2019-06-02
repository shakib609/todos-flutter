import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todos/models/todo.dart';
import 'package:todos/providers/todos_model.dart';

class TodoListItem extends StatelessWidget {
  final Todo todo;

  TodoListItem({@required this.todo});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: todo.completed,
      onChanged: (checked) {
        Provider.of<TodosModel>(
          context,
          listen: false,
        ).toggleTodo(todo);
      },
      title: Text(todo.title),
    );
  }
}
