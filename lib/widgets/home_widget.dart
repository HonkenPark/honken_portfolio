import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:honken_portfolio/controllers/setting_controller.dart';
import 'package:honken_portfolio/model/text_id_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    TextIdModel textId = TextIdModel();
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
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: MediaQuery.of(context).size.width * 0.01,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.width * 0.2),
                  image: const DecorationImage(
                    image: AssetImage('assets/img/profile.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            Flexible(
              flex: 5,
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.42,
                height: MediaQuery.of(context).size.width * 0.3,
                child: buildRichText(
                  textId.getTextContent('HOME_GREETING',
                      Get.find<SettingController>().language.value),
                  Get.find<SettingController>().language.value,
                  MediaQuery.of(context).size.width * 0.025,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

RichText buildRichText(String textContent, int langIdx, double fontSize) {
  List<String> splitText = [
    '박홍근',
    'Honken Park',
    '朴鴻根',
  ];
  List<String> parts = textContent.split(splitText[langIdx]);

  TextStyle normalStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: fontSize,
    color: Colors.white,
  );

  TextStyle specialStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: fontSize,
    color: const Color(0xFFFF6347),
  );

  return RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: parts[0],
          style: normalStyle,
        ),
        TextSpan(
          text: splitText[langIdx],
          style: specialStyle,
        ),
        TextSpan(
          text: parts[1],
          style: normalStyle,
        ),
      ],
    ),
  );
}
