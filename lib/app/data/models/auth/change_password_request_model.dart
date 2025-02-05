import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/auth_user.dart';

part 'change_password_request_model.freezed.dart';

part 'change_password_request_model.g.dart';

@freezed
class ChangePasswordRequestModel with _$ChangePasswordRequestModel {
  const factory ChangePasswordRequestModel({
    required String email,
    required String password,
  }) = _ChangePasswordRequestModel;

  factory ChangePasswordRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestModelFromJson(json);
}
