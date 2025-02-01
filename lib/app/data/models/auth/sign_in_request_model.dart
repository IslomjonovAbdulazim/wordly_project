class SignInRequestModel {
  late final String email;
  late final String password;

  SignInRequestModel({
    required this.email,
    required this.password,
  });

  factory SignInRequestModel.fromJson(Map<String, dynamic> json) {
    return SignInRequestModel(
      email: json['email'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }

  @override
  String toString() => toJson().toString();
}
