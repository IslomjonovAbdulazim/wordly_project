// lib/domain/usecases/get_todos.dart
import 'package:dartz/dartz.dart';
import '../repositories/todo_repository.dart';
import '../entities/todo.dart';
import '../../utils/errors/network_failure.dart';

class GetTodos {
  final TodoRepository repository;

  GetTodos(this.repository);

  Future<Either<NetworkFailure, List<Todo>>> call() async {
    return await repository.getTodos();
  }
}
