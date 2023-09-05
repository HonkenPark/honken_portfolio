import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:honken_portfolio/controllers/setting_controller.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    Get.put(SettingController());
    return Expanded(
      child: GetBuilder<SettingController>(
        builder: (_) => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 5,
              child: Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 10,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(200),
                  image: const DecorationImage(
                    image: AssetImage('assets/img/profile.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            const Flexible(
              flex: 5,
              child: Text(
                '방문해주셔서 감사합니다.\n항상 발전을 갈망하고,\n변화에 대응하는 Flexible을\n갖춘 developer,\n\n박홍근의 포트폴리오입니다.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
