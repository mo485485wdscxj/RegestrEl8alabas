class User {
  String email;
  String password;
  String name;
  String mobileNumber;

  User({required this.email, required this.password, required this.name, required this.mobileNumber});

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'name': name,
      'mobileNumber': mobileNumber,
    };
  }

  static User fromJson(Map<String, dynamic> json) {
    return User(
      email: json['email'],
      password: json['password'],
      name: json['name'],
      mobileNumber: json['mobileNumber'],
    );
  }
}
