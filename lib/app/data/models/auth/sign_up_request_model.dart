class SignUpRequestModel {
  late final String email;
  late final String password;
  late final String? name;

  SignUpRequestModel({
    required this.email,
    required this.password,
    this.name,
  });

  factory SignUpRequestModel.fromJson(Map<String, dynamic> json) {
    return SignUpRequestModel(
      email: json['email'],
      password: json['password'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'name': name,
    };
  }

  @override
  String toString() => toJson().toString();
}
