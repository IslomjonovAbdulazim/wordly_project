import '../../../../domain/entities/auth_user.dart';

class AuthModel {
  final String id;
  final String email;
  final String? name;
  final String? token;
  final bool emailVerified;
  final String? createdAt; // Stored as a String in the JSON response

  AuthModel({
    required this.id,
    required this.email,
    this.name,
    this.token,
    this.emailVerified = false,
    this.createdAt,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String?,
      token: json['token'] as String?,
      emailVerified: json['emailVerified'] as bool? ?? false,
      createdAt: json['createdAt'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'token': token,
      'emailVerified': emailVerified,
      'createdAt': createdAt,
    };
  }

  // Convert the AuthModel to the domain AuthUser entity.
  AuthUser toEntity() {
    return AuthUser(
      id: id,
      email: email,
      name: name,
      token: token,
      emailVerified: emailVerified,
      createdAt: createdAt != null ? DateTime.parse(createdAt!) : null,
    );
  }
}
