// lib/app/screens/todo/todo_page.dart
import 'package:flutter/material.dart';
import 'todo_view.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo List')),
      body: const TodoView(),
    );
  }
}
