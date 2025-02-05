// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpRequestModelImpl _$$SignUpRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignUpRequestModelImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      fullname: json['fullname'] as String?,
    );

Map<String, dynamic> _$$SignUpRequestModelImplToJson(
        _$SignUpRequestModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'fullname': instance.fullname,
    };
