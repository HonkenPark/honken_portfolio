import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:honken_portfolio/controllers/setting_controller.dart';
import 'package:honken_portfolio/models/text_id_model.dart';
import 'package:honken_portfolio/widgets/about_widget.dart';
import 'package:honken_portfolio/widgets/contact_widget.dart';
import 'package:honken_portfolio/widgets/home_widget.dart';
import 'package:honken_portfolio/widgets/project_widget.dart';
import 'package:honken_portfolio/widgets/settings_widget.dart';

class MainScreen extends StatefulWidget {
  final int navIndex;
  const MainScreen({
    super.key,
    required this.navIndex,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int navIndex;

  @override
  void initState() {
    navIndex = widget.navIndex;
    super.initState();
  }

  void _onItemTapped(int index) {
    Get.find<SettingController>().initSetting();
    setState(() {
      navIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    TextIdModel textId = TextIdModel();
    final List<Widget> widgetOptions = <Widget>[
      const HomeWidget(),
      const AboutWidget(),
      const ProjectWidget(),
      const ContactWidget(),
    ];

    return GetBuilder<SettingController>(
      init: SettingController(),
      builder: (_) => GestureDetector(
        onTap: Get.find<SettingController>().initSetting,
        child: Scaffold(
          backgroundColor: Get.find<SettingController>().theme.value == 0 ? const Color(0xFF1E1E1E) : const Color(0xFFF19999),
          body: Column(
            children: [
              Settings(
                isSetting: Get.find<SettingController>().isSetting.value,
              ),
              widgetOptions.elementAt(navIndex)
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: const Icon(Icons.home_outlined),
                label: textId.getTextContent('LABEL_HOME', Get.find<SettingController>().language.value),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.account_box_outlined),
                label: textId.getTextContent('LABEL_ABOUT', Get.find<SettingController>().language.value),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.work_history_outlined),
                label: textId.getTextContent('LABEL_PROJECT', Get.find<SettingController>().language.value),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.contact_mail_outlined),
                label: textId.getTextContent('LABEL_CONTACT', Get.find<SettingController>().language.value),
              ),
            ],
            currentIndex: navIndex,
            showUnselectedLabels: true,
            iconSize: MediaQuery.sizeOf(context).width * 0.03,
            selectedItemColor: const Color(0xFFFF6347),
            unselectedItemColor: const Color(0xFF656C7A),
            onTap: _onItemTapped,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
