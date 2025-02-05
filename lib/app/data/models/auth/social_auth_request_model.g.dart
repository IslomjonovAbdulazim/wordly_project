// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_auth_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocialAuthRequestModelImpl _$$SocialAuthRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialAuthRequestModelImpl(
      provider: json['provider'] as String,
      id: json['id'] as String,
      name: json['name'] as String?,
      email: json['email'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      accessToken: json['accessToken'] as String?,
    );

Map<String, dynamic> _$$SocialAuthRequestModelImplToJson(
        _$SocialAuthRequestModelImpl instance) =>
    <String, dynamic>{
      'provider': instance.provider,
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'avatarUrl': instance.avatarUrl,
      'accessToken': instance.accessToken,
    };
