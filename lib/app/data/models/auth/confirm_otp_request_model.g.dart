// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_otp_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConfirmOtpRequestModelImpl _$$ConfirmOtpRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConfirmOtpRequestModelImpl(
      email: json['email'] as String,
      code: (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$$ConfirmOtpRequestModelImplToJson(
        _$ConfirmOtpRequestModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'code': instance.code,
    };
