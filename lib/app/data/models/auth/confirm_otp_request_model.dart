class ConfirmOtpRequestModel {
  late final String email;
  late final String otp;
  late final String? otpId;

  ConfirmOtpRequestModel({
    required this.email,
    required this.otp,
    this.otpId,
  });

  factory ConfirmOtpRequestModel.fromJson(Map<String, dynamic> json) {
    return ConfirmOtpRequestModel(
      email: json['email'],
      otp: json['otp'],
      otpId: json['otpId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'otp': otp,
      'otpId': otpId,
    };
  }

  @override
  String toString() => toJson().toString();
}