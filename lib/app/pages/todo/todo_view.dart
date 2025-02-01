// lib/app/screens/todo/todo_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/todo_controller.dart';
import '../../widgets/todo_item_widget.dart';

class TodoView extends StatelessWidget {
  const TodoView({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve the controller provided by the binding.
    final TodoController controller = Get.find<TodoController>();

    // Load todos when this view is built.
    controller.loadTodos();

    // Text controller for input.
    final TextEditingController textController = TextEditingController();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: textController,
                  decoration: const InputDecoration(
                    labelText: 'New Todo',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {
                  if (textController.text.trim().isNotEmpty) {
                    controller.addTodo(textController.text.trim());
                    textController.clear();
                  }
                },
                child: const Text('Add'),
              ),
            ],
          ),
        ),
        Expanded(
          // Obx listens to the reactive variable in the controller.
          child: Obx(() {
            final todos = controller.todos;
            if (todos.isEmpty) {
              return const Center(child: Text('No todos yet.'));
            }
            return ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                final todo = todos[index];
                return TodoItemWidget(todo: todo);
              },
            );
          }),
        ),
      ],
    );
  }
}
