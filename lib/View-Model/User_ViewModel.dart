

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Model/User_Model.dart';

class UserViewModel with ChangeNotifier {

  Future<bool> saveUser(UserModel user) async {
   final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('token', user.token.toString());
    notifyListeners();
    return true;
  }

  Future<UserModel> getUser() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final token = sharedPreferences.getString('token');
    return UserModel(token: token);
  }

  void removeUser() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove('token');
    notifyListeners();
  }

}