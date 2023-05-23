class User {
  String? login;
  String? password;
  String? role;

  User(
    this.login,
    this.password,
    this.role,
  );

  User.fromJson(Map<String, dynamic> json) {
    login = json['login'];
    password = json['password'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['login'] = this.login;
    data['password'] = this.password;
    data['role'] = this.role;
    return data;
  }

}
