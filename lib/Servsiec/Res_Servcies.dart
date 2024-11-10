import 'package:dio/dio.dart';

import '../Models/Reg_Models.dart';

class UserService {
  static final Dio dio = Dio();

  static Future<void> signUp(UserModel user) async {
    await dio.post(
      'https://dummyjson.com/users/add',
      data: user.toJson(),
    );
  }

  static Future<UserModel?> login(String email, String password) async {
    try {
      final response = await dio.get('https://dummyjson.com/users');
      List users = response.data['users'];
      for (var u in users) {
        if (u['email'] == email && u['password'] == password) {
          return UserModel.fromJson(u);
        }
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }

  static Future<List<UserModel>> getAllUsers() async {
    final response = await dio.get('https://dummyjson.com/users');
    List users = response.data['users'];
    return users.map((json) => UserModel.fromJson(json)).toList();
  }
}
