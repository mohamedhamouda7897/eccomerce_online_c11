class SignUpDataEntity {
  String email;
  String password;
  String fullName;
  String phone;

  SignUpDataEntity(
      {required this.email,
      required this.password,
      required this.fullName,
      required this.phone});

  Map<String, dynamic> toJson() {
    return {
      "name": fullName,
      "email": email,
      "password": password,
      "rePassword": password,
      "phone": phone
    };
  }
}
