class AuthUser {
  final String id;
  final String email;
  final String? name;
  final String? token;
  final bool emailVerified;
  final DateTime? createdAt;

  AuthUser({
    required this.id,
    required this.email,
    this.name,
    this.token,
    this.emailVerified = false,
    this.createdAt,
  });
}
