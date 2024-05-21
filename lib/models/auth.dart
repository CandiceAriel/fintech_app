class Auth {
  final String email;
  final String password;
  final String? errMessage;

  const Auth({required this.email, required this.password, this.errMessage});

  static fromJson(Map<String, dynamic> jsonDecode) {}
}