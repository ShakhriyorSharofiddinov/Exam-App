class User {
  String? login;
  String? password;
  String? role;

  User({this.login, this.password, this.role});

  User.fromJson(Map<String, dynamic> json) {
    login = json['name'];
    password = json['password'];
    role = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.login;
    data['password'] = this.password;
    data['image'] = this.role;
    return data;
  }
}
