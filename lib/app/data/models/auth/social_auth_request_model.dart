import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_auth_request_model.freezed.dart';
part 'social_auth_request_model.g.dart';

@freezed
class SocialAuthRequestModel with _$SocialAuthRequestModel {
  const factory SocialAuthRequestModel({
    required String provider, // "google", "apple", or "facebook"
    required String token,    // The token obtained from the social login SDK
  }) = _SocialAuthRequestModel;

  factory SocialAuthRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SocialAuthRequestModelFromJson(json);
}
