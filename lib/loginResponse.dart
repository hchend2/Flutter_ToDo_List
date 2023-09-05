
import 'package:flutter_todo_list/loginRequest.dart';
import 'package:flutter_todo_list/User.dart';

abstract class LoginCallBack {
  void onLoginSuccess(User user);
  void onLoginError(String err);
}

class LoginResponse {
  LoginCallBack callBack;
  LoginResponse loginRequest = new LoginRequest() as LoginResponse;
  LoginResponse(this.callBack);

  doLogin(String username, String password) {
    loginRequest
        .getLogin(username, password)
        .then((user) => callBack.onLoginSuccess(user))
        .catchError((onError) => callBack.onLoginError(onError.toString()));
  }
}