import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import '../di/locator.dart';
import '../model/usermodel.dart';

class UserDataController extends GetxController {
  final UserRepository _userRepository = GetIt.I<UserRepository>();
  Rx<UserData> userData = UserData(name: '', email: '').obs;

  @override
  void onInit() {
    super.onInit();
    getUserData();
  }

  Future<void> getUserData() async {
    userData.value = await _userRepository.getUserData();
  }

  Future<void> setUserData(UserData userData) async {
    await _userRepository.setUserData(userData);
    this.userData.value = userData;
  }
}
