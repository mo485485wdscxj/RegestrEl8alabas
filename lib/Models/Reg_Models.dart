class UserModel {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final int age;
  final String gender;
  final String phone;

  UserModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.age,
    required this.gender,
    required this.phone,
  });

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
      'age': age,
      'gender': gender,
      'phone': phone,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      password: json['password'],
      age: json['age'],
      gender: json['gender'],
      phone: json['phone'],
    );
  }
}
