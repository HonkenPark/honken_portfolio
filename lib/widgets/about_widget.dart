import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:honken_portfolio/controllers/setting_controller.dart';

class AboutWidget extends StatefulWidget {
  const AboutWidget({super.key});

  @override
  State<AboutWidget> createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  @override
  Widget build(BuildContext context) {
    Get.put(SettingController());
    print(
        'Get.find<SettingController>().isSetting.value: ${Get.find<SettingController>().isSetting.value}');
    return Expanded(
      child: GetBuilder<SettingController>(
        builder: (_) => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('${Get.find<SettingController>().isSetting.value}'),
            Text('안녕하세요: ${Get.find<SettingController>().isSetting}'),
          ],
        ),
      ),
    );
  }
}
