

class User {
  int id = 0;
  String username;
  String password;

  User(this.username, this.password);

  User.fromMap(dynamic object) {
    this.username = object['_username'];
    this.password = object['_password'];
  }

  String get _username => username;
  String get _password => password;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map[_username] = username;
    map[_password] = password;
    return map;
  }
}