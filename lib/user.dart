class Usera {
  String? login;
  String? password;

  Usera(
    this.login,
    this.password,
  );

  Usera.fromJson(Map<String, dynamic> json) {
    login = json['login'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['login'] = this.login;
    data['password'] = this.password;
    return data;
  }

}
