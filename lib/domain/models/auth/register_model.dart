class RegisterModel {
  final String username;
  final String email;
  final String password;
  final String name;
  final String confirmPassword;

  RegisterModel({
    required this.username,
    required this.email,
    required this.password,
    required this.name,
    required this.confirmPassword,
  });

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'email': email,
      'password': password,
      'name': name,
      'password_confirmation': confirmPassword,
    };
  }
}