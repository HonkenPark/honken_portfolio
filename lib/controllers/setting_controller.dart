import 'package:get/get.dart';

class SettingController extends GetxController {
  RxInt language = 0.obs;
  RxInt theme = 0.obs;
  RxBool isSetting = false.obs;
  RxBool isLanguage = false.obs;
  RxBool isTheme = false.obs;

  void changeLanguage(int input) {
    language = input.obs;
    update();
  }

  void changeTheme(int input) {
    theme = input.obs;
    update();
  }

  void initSetting() {
    isSetting = false.obs;
    isLanguage = false.obs;
    isTheme = false.obs;
    update();
  }

  void toggleSetting() {
    if (isSetting.value) {
      isSetting = false.obs;
      isLanguage = false.obs;
      isTheme = false.obs;
    } else {
      isSetting = true.obs;
    }
    update();
  }

  void toggleLanguage() {
    isLanguage = RxBool(isLanguage.toggle().value);
    isTheme = false.obs;
    update();
  }

  void toggleTheme() {
    isTheme = RxBool(isTheme.toggle().value);
    isLanguage = false.obs;
    update();
  }
}
