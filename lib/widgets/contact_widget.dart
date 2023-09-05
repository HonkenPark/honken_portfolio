import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:honken_portfolio/controllers/setting_controller.dart';

class ContactWidget extends StatefulWidget {
  const ContactWidget({super.key});

  @override
  State<ContactWidget> createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {
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
