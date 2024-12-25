import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:honken_portfolio/controllers/setting_controller.dart';
import 'package:honken_portfolio/models/text_id_model.dart';

class AboutWidget extends StatefulWidget {
  const AboutWidget({super.key});

  @override
  State<AboutWidget> createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  TextIdModel textId = TextIdModel();
  bool isHover1 = false, isHover2 = false, isHover3 = false, isHover4 = false;
  bool isClick1 = false, isClick2 = false, isClick3 = false, isClick4 = false;
  String aboutContent = "";

  @override
  Widget build(BuildContext context) {
    Get.put(SettingController());
    if (isClick1) {
      aboutContent = textId.getTextContent(
        'ABOUT_CONTENT_1',
        Get.find<SettingController>().language.value,
      );
    } else if (isClick2) {
      aboutContent = textId.getTextContent(
        'ABOUT_CONTENT_2',
        Get.find<SettingController>().language.value,
      );
    } else if (isClick3) {
      aboutContent = textId.getTextContent(
        'ABOUT_CONTENT_3',
        Get.find<SettingController>().language.value,
      );
    } else if (isClick4) {
      aboutContent = textId.getTextContent(
        'ABOUT_CONTENT_4',
        Get.find<SettingController>().language.value,
      );
    }
    return Expanded(
      child: GetBuilder<SettingController>(
        builder: (_) => Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.05,
            ),
            Flexible(
              flex: 2,
              // fit: FlexFit.tight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        isHover1 = true;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        isHover1 = false;
                      });
                    },
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isClick1 = true;
                          isClick2 = false;
                          isClick3 = false;
                          isClick4 = false;
                        });
                      },
                      child: Text(
                        textId.getTextContent(
                          'ABOUT_MENU_1',
                          Get.find<SettingController>().language.value,
                        ),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * 0.02,
                          color: isHover1
                              ? Colors.blue
                              : isClick1
                                  ? const Color(0xFFFF6347)
                                  : Colors.white,
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        isHover2 = true;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        isHover2 = false;
                      });
                    },
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isClick1 = false;
                          isClick2 = true;
                          isClick3 = false;
                          isClick4 = false;
                        });
                      },
                      child: Text(
                        textId.getTextContent(
                          'ABOUT_MENU_2',
                          Get.find<SettingController>().language.value,
                        ),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * 0.02,
                          color: isHover2
                              ? Colors.blue
                              : isClick2
                                  ? const Color(0xFFFF6347)
                                  : Colors.white,
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        isHover3 = true;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        isHover3 = false;
                      });
                    },
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isClick1 = false;
                          isClick2 = false;
                          isClick3 = true;
                          isClick4 = false;
                        });
                      },
                      child: Text(
                        textId.getTextContent(
                          'ABOUT_MENU_3',
                          Get.find<SettingController>().language.value,
                        ),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * 0.02,
                          color: isHover3
                              ? Colors.blue
                              : isClick3
                                  ? const Color(0xFFFF6347)
                                  : Colors.white,
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        isHover4 = true;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        isHover4 = false;
                      });
                    },
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isClick1 = false;
                          isClick2 = false;
                          isClick3 = false;
                          isClick4 = true;
                        });
                      },
                      child: Text(
                        textId.getTextContent(
                          'ABOUT_MENU_4',
                          Get.find<SettingController>().language.value,
                        ),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * 0.02,
                          color: isHover4
                              ? Colors.blue
                              : isClick4
                                  ? const Color(0xFFFF6347)
                                  : Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.03,
            ),
            Flexible(
              flex: 3,
              // fit: FlexFit.tight,
              child: Text(
                aboutContent,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.018,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}
