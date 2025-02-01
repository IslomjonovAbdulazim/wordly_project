// lib/app/data/repositories/todo_repository_impl.dart
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../domain/entities/todo.dart';
import '../../../domain/repositories/todo_repository.dart';
import '../../../utils/errors/network_failure.dart';
import '../models/todo_model.dart';
import '../providers/api_client.dart';

class TodoRepositoryImpl implements TodoRepository {
  final ApiClient apiClient;

  TodoRepositoryImpl({Dio? dio})
      : apiClient = ApiClient(
          dio ??
              Dio(BaseOptions(
                baseUrl: "https://api.example.com",
                connectTimeout: Duration(seconds: 30),
                receiveTimeout: Duration(seconds: 30),
              )),
        );

  @override
  Future<Either<NetworkFailure, List<Todo>>> getTodos() async {
    try {
      final todosData = await apiClient.getTodos();
      final todos = todosData.map((model) => model.toEntity()).toList();
      return Right(todos);
    } on DioException catch (e) {
      return Left(
        NetworkFailure(
          message: e.message ?? "Error",
          code: e.response?.statusCode,
        ),
      );
    }
  }

  @override
  Future<Either<NetworkFailure, Todo>> addTodo(String title) async {
    try {
      final todoData = await apiClient.createTodo(
        {"title": title, "isDone": false},
      );
      return Right(todoData.toEntity());
    } on DioException catch (e) {
      return Left(
        NetworkFailure(
          message: e.message ?? "Error",
          code: e.response?.statusCode,
        ),
      );
    }
  }

  @override
  Future<Either<NetworkFailure, Todo>> updateTodo(
      int id, Map<String, dynamic> updateData) async {
    try {
      final TodoModel updatedModel = await apiClient.updateTodo(id, updateData);
      return Right(updatedModel.toEntity());
    } on DioException catch (e) {
      return Left(
        NetworkFailure(
          message: e.message ?? "Error",
          code: e.response?.statusCode,
        ),
      );
    }
  }

  @override
  Future<Either<NetworkFailure, void>> deleteTodo(int id) async {
    try {
      await apiClient.deleteTodo(id);
      return const Right(null);
    } on DioException catch (e) {
      return Left(
        NetworkFailure(
          message: e.message ?? "Error",
          code: e.response?.statusCode,
        ),
      );
    }
  }
}
