import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:honken_portfolio/controllers/home_controller.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    final isDesktop = ResponsiveBreakpoints.of(context).largerThan(TABLET);

    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: ListView(
          padding: const EdgeInsets.all(24.0),
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  'Frontend Developer based in Seoul, Korea',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: isDesktop ? 48.0 : 36.0,
                    color: Colors.blue,
                    height: 1.0,
                    letterSpacing: -1.0,
                  ),
                ),
                Text(
                  'Frontend Developer based in Seoul, Korea',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: isDesktop ? 48.0 : 36.0,
                    color: Colors.blue,
                    height: 1.0,
                    letterSpacing: -1.0,
                  ),
                ).animate(onPlay: (controller) => controller.repeat()).shimmer(duration: const Duration(seconds: 3), color: Colors.white),
              ],
            ),
            homeController.hr,
            Column(
              children: [
                Container(
                  width: isDesktop ? 240 : 180,
                  height: isDesktop ? 240 : 180,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 4.0,
                    ),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/profile.jpg'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                const SizedBox(height: 24.0),
                Text(
                  '프론트엔드 개발자 박홍근 입니다.',
                  // 'Honken Park',
                  style: TextStyle(
                    fontSize: isDesktop ? 36.0 : 28.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [
                      Color(0xFF2BFAFA),
                      Color(0xFF764BA2),
                      Color(0xFFFF69B4),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(bounds),
                  child: Text(
                    '  웹과 모바일을 잇는 기술로 사용자 중심의 경험을 설계합니다.  ',
                    // '  Bridging web and mobile with technology, designing user-first solutions  ',
                    style: TextStyle(
                      fontSize: isDesktop ? 24.0 : 20.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            homeController.hr,
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: homeController.generateInfoItems(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
