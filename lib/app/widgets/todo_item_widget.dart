// lib/app/widgets/todo_item_widget.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data/models/todo_model.dart';
import '../controllers/todo_controller.dart';

class TodoItemWidget extends StatelessWidget {
  final TodoModel todo;

  const TodoItemWidget({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    // Retrieve the TodoController instance.
    final TodoController controller = Get.find<TodoController>();

    return ListTile(
      leading: Checkbox(
        value: todo.isDone,
        onChanged: (value) {
          controller.toggleTodoStatus(todo.id);
        },
      ),
      title: Text(
        todo.title,
        style: TextStyle(
          decoration: todo.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete, color: Colors.red),
        onPressed: () {
          controller.removeTodo(todo.id);
        },
      ),
    );
  }
}
