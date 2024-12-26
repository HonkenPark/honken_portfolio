import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:honken_portfolio/controllers/base_controller.dart';
import 'package:honken_portfolio/enums.dart';
import 'package:honken_portfolio/views/about_screen.dart';
import 'package:honken_portfolio/views/contact_screen.dart';
import 'package:honken_portfolio/views/home_screen.dart';
import 'package:honken_portfolio/views/project_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final baseController = Get.put(BaseController());
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;

    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1E1E),
        title: !isMobile
            ? TabBar(
                controller: baseController.tabController,
                labelColor: Colors.white,
                indicatorColor: Colors.blue,
                tabAlignment: TabAlignment.center,
                tabs: const [
                  // Tab(text: 'HOME'),
                  // Tab(text: 'ABOUT'),
                  // Tab(text: 'PROJECT'),
                  // Tab(text: 'SKILL'),
                  // Tab(text: 'CONTACT'),
                  Tab(text: '홈'),
                  Tab(text: '소개'),
                  Tab(text: '프로젝트'),
                  // Tab(text: '기술'),
                  Tab(text: '연락처'),
                ],
              )
            : null,
      ),
      bottomNavigationBar: isMobile
          ? Obx(() => BottomNavigationBar(
                items: baseController.availableBottomMenus,
                currentIndex: baseController.getSelectedIndex,
                onTap: (value) => baseController.changeIndex = value,
                selectedLabelStyle: const TextStyle(
                  fontSize: 10.0,
                ),
              ))
          : null,
      body: Obx(() {
        final selectedType = ScreenContentType.fromValue(baseController.selectedIndex.value);
        switch (selectedType) {
          case ScreenContentType.home:
            return const HomeScreen();
          case ScreenContentType.about:
            return const AboutScreen();
          case ScreenContentType.project:
            return const ProjectScreen();
          // case ScreenContentType.skill:
          //   return const Center(child: Text('skill page'));
          case ScreenContentType.contact:
            return const ContactScreen();
        }
      }),
    );
  }
}
