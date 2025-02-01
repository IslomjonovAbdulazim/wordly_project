// lib/domain/repositories/todo_repository.dart
import 'package:dartz/dartz.dart';

import '../../utils/errors/network_failure.dart';
import '../entities/todo.dart';

abstract class TodoRepository {
  Future<Either<NetworkFailure, List<Todo>>> getTodos();

  Future<Either<NetworkFailure, Todo>> addTodo(String title);

  Future<Either<NetworkFailure, Todo>> updateTodo(
    int id,
    Map<String, dynamic> updateData,
  );

  Future<Either<NetworkFailure, void>> deleteTodo(int id);
}
