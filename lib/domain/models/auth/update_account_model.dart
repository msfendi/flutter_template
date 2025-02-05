class UpdateAccountModel {
  String? name;
  String? email;
  String? phone;
  String? password;
  String? passwordConfirmation;

  UpdateAccountModel({
    this.name,
    this.email,
    this.phone,
    this.password,
    this.passwordConfirmation,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (name != null) {
      data['name'] = name;
    }
    if (email != null) {
      data['email'] = email;
    }
    if (phone != null) {
      data['phone'] = phone;
    }
    if (password != null) {
      data['password'] = password;
    }
    if (passwordConfirmation != null) {
      data['password_confirmation'] = passwordConfirmation;
    }
    return data;
  }
}