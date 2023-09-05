
import 'dart:async';
import 'package:flutter_todo_list/User.dart';

class LoginRequest {
  LoginCtr ctr = new LoginCtr();

  Future<User> getLogin(String username, String password) {
    var result = ctr.getLogin(username, password);
    return result;
  }
}