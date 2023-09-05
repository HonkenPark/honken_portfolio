import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:honken_portfolio/controllers/setting_controller.dart';

class Settings extends StatefulWidget {
  final bool isSetting;
  const Settings({
    super.key,
    required this.isSetting,
  });

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  late bool isSetting;

  @override
  void initState() {
    isSetting = widget.isSetting;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: Get.find<SettingController>().toggleSetting,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.02, // 30,
                height: MediaQuery.of(context).size.width * 0.02, //30,
                child: Icon(
                  Icons.settings_outlined,
                  color: Get.find<SettingController>().theme.value == 0
                      ? const Color(0xFFA8A8A8)
                      : Colors.white,
                ),
              ),
            ),
            if (Get.find<SettingController>().isSetting.value)
              Column(
                children: [
                  GestureDetector(
                    onTap: Get.find<SettingController>().toggleLanguage,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                      height: MediaQuery.of(context).size.width * 0.02,
                      child: Icon(
                        Icons.language_outlined,
                        color: Get.find<SettingController>().theme.value == 0
                            ? const Color(0xFFA8A8A8)
                            : Colors.white,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: Get.find<SettingController>().toggleTheme,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                      height: MediaQuery.of(context).size.width * 0.02,
                      child: Icon(
                        Icons.color_lens_outlined,
                        color: Get.find<SettingController>().theme.value == 0
                            ? const Color(0xFFA8A8A8)
                            : Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            else
              Container(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Get.find<SettingController>().isLanguage.value)
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.find<SettingController>().changeLanguage(0);
                          Get.find<SettingController>().initSetting();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.02,
                          height: MediaQuery.of(context).size.width * 0.02,
                          child: Text(
                            '한',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.01,
                              color:
                                  Get.find<SettingController>().theme.value == 0
                                      ? const Color(0xFFA8A8A8)
                                      : Colors.white,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.find<SettingController>().changeLanguage(1);
                          Get.find<SettingController>().initSetting();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.02,
                          height: MediaQuery.of(context).size.width * 0.02,
                          child: Text(
                            'A',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.01,
                              color:
                                  Get.find<SettingController>().theme.value == 0
                                      ? const Color(0xFFA8A8A8)
                                      : Colors.white,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.find<SettingController>().changeLanguage(2);
                          Get.find<SettingController>().initSetting();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.02,
                          height: MediaQuery.of(context).size.width * 0.02,
                          child: Text(
                            'あ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.01,
                              color:
                                  Get.find<SettingController>().theme.value == 0
                                      ? const Color(0xFFA8A8A8)
                                      : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                else
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.02,
                  ),
                if (Get.find<SettingController>().isTheme.value)
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.find<SettingController>().changeTheme(0);
                          Get.find<SettingController>().initSetting();
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                          height: MediaQuery.of(context).size.width * 0.02,
                          child: const Icon(
                            Icons.circle,
                            color: Color.fromARGB(255, 37, 52, 80),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.find<SettingController>().changeTheme(1);
                          Get.find<SettingController>().initSetting();
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                          height: MediaQuery.of(context).size.width * 0.02,
                          child: const Icon(
                            Icons.circle,
                            color: Color.fromARGB(255, 247, 111, 111),
                          ),
                        ),
                      ),
                    ],
                  )
                else
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.02,
                  ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
