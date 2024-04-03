import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weed_club/model/app_user.dart';
import 'package:weed_club/repository/remote/user_repository/user_repository.dart';

part 'auth_repository.g.dart';

@riverpod
FirebaseAuth firebaseAuth(FirebaseAuthRef ref) {
  return FirebaseAuth.instance;
}

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  final firebaseAuth = ref.watch(firebaseAuthProvider);
  final userRepository = ref.watch(userRepositoryProvider);
  return AuthRepository(firebaseAuth, userRepository);
}

@riverpod
Stream<User?> authStateChanges(AuthStateChangesRef ref) {
  return ref.watch(authRepositoryProvider).authStateChanges();
}

class AuthRepository {
  final FirebaseAuth _auth;
  final UserRepository _userRepository;

  AuthRepository(
    this._auth,
    this._userRepository,
  );

  Stream<User?> authStateChanges() => _auth.authStateChanges();

  User? get currentUser => _auth.currentUser;

  AppUser? _toAppUser(User? user) {
    if (user == null) return null;

    return AppUser(
      id: user.uid,
      email: user.email ?? '',
      password: '',
    );
  }

  AppUser? get appUser => _toAppUser(currentUser);

  Future<AppUser?> signup(
      {required String email, required String password}) async {
    try {
      final response = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (response.user == null) return null;

      final user = response.user;

      final newUser = AppUser(
        id: user?.uid ?? '',
        email: email,
        password: password,
      );

      await _userRepository.addNewUser(
        user!.uid,
        newUser.toJson(),
      );

      return newUser;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message ?? '');
    }
  }

  Future<User?> logIn({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return result.user;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message ?? '');
    }
  }

  Future<void> signOut() async {
    try {
      await Future.wait([
        _auth.signOut(),
      ]);
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message ?? '');
    }
  }
}
