import 'package:get/get.dart';
import 'package:wordly_project/app/data/repositories/todo_repository.dart';
import '../data/models/todo_model.dart';

class TodoController extends GetxController {
  final TodoRepositoryImpl repository = TodoRepositoryImpl();

  final todos = <TodoModel>[].obs;

  void loadTodos() {
    // todos.assignAll(repository.getTodos());
  }

  void addTodo(String title) {
    final newTodo = TodoModel(id: todos.length + 1, title: title);
    // repository.addTodo(newTodo);
    loadTodos(); // Refresh the list.
  }

  void toggleTodoStatus(int id) {
    // repository.toggleTodoStatus(id);
    loadTodos();
  }

  void removeTodo(int id) {
    // repository.removeTodo(id);
    loadTodos();
  }

}
