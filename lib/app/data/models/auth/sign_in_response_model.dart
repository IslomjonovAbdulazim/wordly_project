import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_response_model.freezed.dart';
part 'sign_in_response_model.g.dart';

@freezed
class SignInResponseModel with _$SignInResponseModel {
  const factory SignInResponseModel({
    required String access,
    required String refresh,
  }) = _SignInResponseModel;

  factory SignInResponseModel.fromJson(Map<String, dynamic> json) => _$SignInResponseModelFromJson(json);
}