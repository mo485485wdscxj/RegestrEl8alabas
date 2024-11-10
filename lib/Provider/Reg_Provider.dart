import 'package:flutter/material.dart';

import '../Models/Reg_Models.dart';
import '../Servsiec/Res_Servcies.dart';


class UserProvider extends ChangeNotifier {
  UserModel? _loggedInUser;
  List<UserModel> _allUsers = [];

  UserModel? get loggedInUser => _loggedInUser;
  List<UserModel> get allUsers => _allUsers;

  Future<void> signUp(UserModel user) async {
    await UserService.signUp(user);
    notifyListeners();
  }

  Future<void> login(String email, String password) async {
    _loggedInUser = await UserService.login(email, password);
    notifyListeners();
  }

  Future<void> fetchAllUsers() async {
    _allUsers = await UserService.getAllUsers();
    notifyListeners();
  }
}
