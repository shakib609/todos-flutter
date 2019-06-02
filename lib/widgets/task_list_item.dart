import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todos/models/task.dart';
import 'package:todos/providers/todos_model.dart';

class TaskListItem extends StatelessWidget {
  final Task task;

  TaskListItem({@required this.task});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: task.completed,
      onChanged: (checked) {
        Provider.of<TodosModel>(context, listen: false).toggleTodo(task);
      },
      title: Text(task.title),
    );
  }
}
