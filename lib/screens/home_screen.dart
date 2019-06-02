import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todos/screens/add_todo_screen.dart';
import 'package:todos/tabs/todos_all.dart';
import 'package:todos/tabs/todos_complete.dart';
import 'package:todos/tabs/todos_incomplete.dart';
import 'package:todos/models/todo.dart';
import 'package:todos/providers/todos_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddTodoScreen(),
                ),
              );
            },
          ),
        ],
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(text: 'All'),
            Tab(text: 'Incomplete'),
            Tab(text: 'Complete'),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          TodosAllTab(),
          TodosIncompleteTab(),
          TodosCompleteTab(),
        ],
      ),
    );
  }
}
