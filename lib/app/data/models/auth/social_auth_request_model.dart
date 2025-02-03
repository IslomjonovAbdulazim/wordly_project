import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_auth_request_model.freezed.dart';
part 'social_auth_request_model.g.dart';

@freezed
class SocialAuthRequestModel with _$SocialAuthRequestModel {
  const factory SocialAuthRequestModel({
    required String id,
    String? name,
    String? email,
    String? avatarUrl,
    String? accessToken,
  }) = _SocialAuthRequestModel;

  factory SocialAuthRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SocialAuthRequestModelFromJson(json);
}
