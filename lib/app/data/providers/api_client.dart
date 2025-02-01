// lib/app/data/providers/api_client.dart

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/todo_model.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://api.example.com")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/todos")
  Future<List<TodoModel>> getTodos();

  @POST("/todos")
  Future<TodoModel> createTodo(
    @Body() Map<String, dynamic> todo,
  );

  @PUT("/todos/{id}")
  Future<TodoModel> updateTodo(
    @Path("id") int id,
    @Body() Map<String, dynamic> todo,
  );

  @DELETE("/todos/{id}")
  Future<void> deleteTodo(
    @Path("id") int id,
  );
}
