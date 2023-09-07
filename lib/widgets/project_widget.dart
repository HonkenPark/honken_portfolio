import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:honken_portfolio/controllers/setting_controller.dart';
import 'package:honken_portfolio/model/text_id_model.dart';
import 'package:honken_portfolio/widgets/tech_gridview_widget.dart';

class ProjectWidget extends StatefulWidget {
  const ProjectWidget({super.key});

  @override
  State<ProjectWidget> createState() => _ProjectWidgetState();
}

class _ProjectWidgetState extends State<ProjectWidget> {
  int selectedProjectNum = 0;
  TextIdModel textId = TextIdModel();
  bool isHover1 = false,
      isHover2 = false,
      isHover3 = false,
      isHover4 = false,
      isHover5 = false,
      isHover6 = false;

  @override
  Widget build(BuildContext context) {
    Get.put(SettingController());

    return Expanded(
      child: GetBuilder<SettingController>(
        builder: (_) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                          selectedProjectNum = 1;
                        });
                      },
                      child: Text(
                        textId.getTextContent(
                          'PROJECT_HISTORY_1',
                          Get.find<SettingController>().language.value,
                        ),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * 0.012,
                          color: isHover1 ? Colors.blue : Colors.white,
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
                          selectedProjectNum = 2;
                        });
                      },
                      child: Text(
                        textId.getTextContent(
                          'PROJECT_HISTORY_2',
                          Get.find<SettingController>().language.value,
                        ),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * 0.012,
                          color: isHover2 ? Colors.blue : Colors.white,
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
                          selectedProjectNum = 3;
                        });
                      },
                      child: Text(
                        textId.getTextContent(
                          'PROJECT_HISTORY_3',
                          Get.find<SettingController>().language.value,
                        ),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * 0.012,
                          color: isHover3 ? Colors.blue : Colors.white,
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
                          selectedProjectNum = 4;
                        });
                      },
                      child: Text(
                        textId.getTextContent(
                          'PROJECT_HISTORY_4',
                          Get.find<SettingController>().language.value,
                        ),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * 0.012,
                          color: isHover4 ? Colors.blue : Colors.white,
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        isHover5 = true;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        isHover5 = false;
                      });
                    },
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedProjectNum = 5;
                        });
                      },
                      child: Text(
                        textId.getTextContent(
                          'PROJECT_HISTORY_5',
                          Get.find<SettingController>().language.value,
                        ),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * 0.012,
                          color: isHover5 ? Colors.blue : Colors.white,
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        isHover6 = true;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        isHover6 = false;
                      });
                    },
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedProjectNum = 6;
                        });
                      },
                      child: Text(
                        textId.getTextContent(
                          'PROJECT_HISTORY_6',
                          Get.find<SettingController>().language.value,
                        ),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * 0.012,
                          color: isHover6 ? Colors.blue : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textId.getTextContent('PROJECT_TECH',
                        Get.find<SettingController>().language.value),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * 0.02,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.72,
                    color: Colors.white,
                    child: TechGridViewWidget(
                      selectedProject: selectedProjectNum,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
