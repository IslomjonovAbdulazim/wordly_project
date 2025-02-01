import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/auth_user.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel({
    required String id,
    required String email,
    String? name,
    String? token,
    @Default(false) bool emailVerified,
    String? createdAt,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
}

extension AuthModelX on AuthModel {
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
