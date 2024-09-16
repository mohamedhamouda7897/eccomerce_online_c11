class SignUpDataEntity {
  String email;
  String password;
  String fullName;
  String phone;

  SignUpDataEntity({
    required this.email,
    required this.password,
    required this.fullName,
    required this.phone,
  });

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'name': fullName,
      'phone': phone,
      "rePassword":password,
    };

  //   {
  //     "name": "MOohamed Hamouda",
  //   "email":"shadi5565435@gmail.com",
  //   "password":"123456",
  //   "rePassword":"123456",
  //   "phone":"01110944551"
  // }
  }
}
