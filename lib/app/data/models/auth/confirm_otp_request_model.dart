import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_otp_request_model.freezed.dart';
part 'confirm_otp_request_model.g.dart';

@freezed
class ConfirmOtpRequestModel with _$ConfirmOtpRequestModel {
  factory ConfirmOtpRequestModel({
    required String email,
    required int code,
  }) = _ConfirmOtpRequestModel;

  factory ConfirmOtpRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ConfirmOtpRequestModelFromJson(json);
}
