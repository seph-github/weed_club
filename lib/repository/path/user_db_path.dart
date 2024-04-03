class UserDbPath {
  UserDbPath._();
  static String users() => 'users';
  static String user(String userId) => '${users()}/$userId';
}
