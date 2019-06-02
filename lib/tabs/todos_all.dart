import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todos/providers/todos_model.dart';
import 'package:todos/widgets/todos_list.dart';

class TodosAllTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<TodosModel>(
        builder: (context, todos, child) => TodosList(
              todos: todos.allTodos,
            ),
      ),
    );
  }
}
