class LoginRepsitoryImpl {
  LoginRepsitoryImpl({
    required this.email,
    required this.password,
  });
  final String email;
  final String password;
  Map<String, dynamic> toMap() => {'email': email, 'password': password};
}
