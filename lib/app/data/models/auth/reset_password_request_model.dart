import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_request_model.freezed.dart';
part 'reset_password_request_model.g.dart';

@freezed
class ResetPasswordRequestModel with _$ResetPasswordRequestModel {
  const factory ResetPasswordRequestModel({
    required String access,
  }) = _ResetPasswordRequestModel;

  factory ResetPasswordRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordRequestModelFromJson(json);
}
