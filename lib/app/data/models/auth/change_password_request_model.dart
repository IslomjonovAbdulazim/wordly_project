class ChangePasswordRequestModel {
  late final String email;
  late final String newPassword;

  ChangePasswordRequestModel({
    required this.email,
    required this.newPassword,
  });

  factory ChangePasswordRequestModel.fromJson(Map<String, dynamic> json) {
    return ChangePasswordRequestModel(
      email: json['email'],
      newPassword: json['newPassword'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'newPassword': newPassword,
    };
  }

  @override
  String toString() => toJson().toString();
}
