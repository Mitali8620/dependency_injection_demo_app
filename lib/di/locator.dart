import '../model/usermodel.dart';

abstract class UserRepository {
  Future<UserData> getUserData();

  Future<void> setUserData(UserData userData);
}
