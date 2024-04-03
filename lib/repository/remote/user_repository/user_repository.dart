import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weed_club/database/remote/firebase_database.dart';
import 'package:weed_club/model/app_user.dart';
import 'package:weed_club/repository/path/user_db_path.dart';

part 'user_repository.g.dart';

@riverpod
UserRepository userRepository(UserRepositoryRef ref) {
  final database = ref.watch(firebaseDatabaseProvider);
  return UserRepository(database);
}

class UserRepository {
  final FirebaseDatabase database;

  UserRepository(this.database);

  Future<void> addNewUser(
    String userId,
    Map<String, dynamic> data,
  ) async {
    database.setData(path: UserDbPath.user(userId), data: data);
  }

  Future<AppUser?> findUserById(String id) async {
    AppUser? appUser = await database.getData(
      path: UserDbPath.user(id),
      builder: (data, _) => AppUser.fromJson(data),
    );
    return appUser;
  }
}
