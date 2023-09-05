import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:honken_portfolio/controllers/setting_controller.dart';

class ProjectWidget extends StatefulWidget {
  const ProjectWidget({super.key});

  @override
  State<ProjectWidget> createState() => _ProjectWidgetState();
}

class _ProjectWidgetState extends State<ProjectWidget> {
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
