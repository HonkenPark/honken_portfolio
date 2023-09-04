import 'package:get/get.dart';

class SettingController extends GetxController {
  RxInt language = 0.obs;
  RxInt theme = 0.obs;
  RxBool isSetting = false.obs;
  RxBool isLanguage = false.obs;
  RxBool isTheme = false.obs;

  void changeLanguage(RxInt input) {
    language = input;
  }

  void changeTheme(RxInt input) {
    theme = input;
  }

  void toggleSetting(bool input) {
    print('input: $input');
    isSetting = input.obs;
    isSetting.refresh();
  }
}
