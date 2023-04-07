import 'package:get_storage/get_storage.dart';
import '../model/usermodel.dart';
import 'locator.dart';

class UserRepositoryImpl implements UserRepository {
  final storage = GetStorage();

  @override
  Future<UserData> getUserData() async {
    final data = storage.read('userData');
    if (data != null) {
      return data;
    } else {
      return UserData(name: '', email: '');
    }
  }

  @override
  Future<void> setUserData(UserData userData) async {
    await storage.write('userData', userData);
  }
}
