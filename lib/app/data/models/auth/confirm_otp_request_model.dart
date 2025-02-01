import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_otp_request_model.freezed.dart';
part 'confirm_otp_request_model.g.dart';

@freezed
class ConfirmOtpRequestModel with _$ConfirmOtpRequestModel {
  const factory ConfirmOtpRequestModel({
    required String email,
    required String newPassword,
}) = _ConfirmOtpRequestModel;

  factory ConfirmOtpRequestModel.fromJson(Map<String, dynamic> json) => _$ConfirmOtpRequestModelFromJson(json);
}
