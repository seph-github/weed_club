// ignore_for_file: unused_element

enum Routes { login, signup, feed, post, comment }

extension RoutesPathExtension on Routes {
  String get routePath {
    switch (this) {
      case Routes.login:
        return '/login';
      case Routes.signup:
        return 'signup';
      case Routes.post:
        return 'post';
      case Routes.comment:
        return 'comment';
      case Routes.feed:
        return '/';
      default:
        return '/';
    }
  }

  String get routeName {
    switch (this) {
      case Routes.login:
        return 'Login';
      case Routes.signup:
        return 'Signup';
      case Routes.post:
        return 'Post';
      case Routes.comment:
        return 'Comment';
      case Routes.feed:
        return 'Feed';
      default:
        return 'Feed';
    }
  }
}
