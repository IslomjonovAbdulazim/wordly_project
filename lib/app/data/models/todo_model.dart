import 'package:wordly_project/domain/entities/todo.dart';

class TodoModel {
  late final int id;
  late final String title;
  late bool isDone;

  TodoModel({
    required this.id,
    required this.title,
    this.isDone = false,
  });

  factory TodoModel.fromJson(Map<String, dynamic> json) {
    return TodoModel(
      id: json['id'],
      title: json['title'],
      isDone: json['isDone'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'isDone': isDone,
    };
  }

  Todo toEntity() {
    return Todo(
      id: id,
      title: title,
      isDone: isDone,
    );
  }

  @override
  String toString() => toJson().toString();
}
