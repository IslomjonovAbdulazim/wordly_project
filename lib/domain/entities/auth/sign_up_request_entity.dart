class SignUpRequestEntity {
  final String fullname;
  final String email;
  final String password;

  SignUpRequestEntity({
    required this.password,
    required this.email,
    required this.fullname,
  });
}
