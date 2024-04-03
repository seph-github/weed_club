import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weed_club/app/go_router_refresh_listenable.dart';
import 'package:weed_club/app/routes.dart';
import 'package:weed_club/features/comment/presentation/comment_page.dart';
import 'package:weed_club/features/feed/presentation/feed_page.dart';
import 'package:weed_club/features/login/presentation/login_page.dart';
import 'package:weed_club/features/post/presentation/new_post_page.dart';
import 'package:weed_club/features/signup/presentation/signup_page.dart';
import 'package:weed_club/repository/remote/auth/auth_repository.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return GoRouter(
    debugLogDiagnostics: true,
    redirect: (context, state) {
      final path = state.uri.path;
      final isLogin = path.startsWith(Routes.login.routePath);
      final hasUser = authRepository.currentUser != null;

      if (hasUser) return isLogin ? null : Routes.login.routePath;

      if (isLogin) return Routes.feed.routePath;

      return null;
    },
    refreshListenable: GoRouterRefreshStream(
      ref.watch(authRepositoryProvider).authStateChanges(),
    ),
    routes: [
      GoRoute(
          name: Routes.login.routeName,
          path: Routes.login.routePath,
          pageBuilder: (context, state) => const NoTransitionPage(
                child: LoginPage(),
              ),
          routes: [
            GoRoute(
              name: Routes.signup.routeName,
              path: Routes.signup.routePath,
              pageBuilder: (context, state) => const NoTransitionPage(
                child: SignupPage(),
              ),
            ),
          ]),
      GoRoute(
        name: Routes.feed.routeName,
        path: Routes.feed.routePath,
        builder: (context, state) => const FeedPage(),
        routes: [
          GoRoute(
            name: Routes.post.routeName,
            path: Routes.post.routePath,
            builder: (context, state) => const NewPostPage(),
          ),
          GoRoute(
            name: Routes.comment.routeName,
            path: Routes.comment.routePath,
            builder: (context, state) => const CommentPage(),
          ),
        ],
      ),
    ],
  );
}
