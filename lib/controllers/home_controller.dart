import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeController extends GetxController {
  Widget get hr => Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Container(
          height: 2,
          color: const Color(0x8080DDFF),
          margin: const EdgeInsets.symmetric(vertical: 16),
        ).animate().scale(duration: 600.ms, alignment: Alignment.centerLeft),
      );

  List<Widget> generateInfoItems(BuildContext context) {
    final isDesktop = ResponsiveBreakpoints.of(context).largerThan(TABLET);

    return [
      _infoItem(
        context,
        icon: Icons.flutter_dash,
        text: 'Flutter 전문가: 웹·모바일 크로스 플랫폼 앱 개발 능력 보유',
        // text: 'Flutter Expert: Extensive experience in cross-platform web and mobile app development.',
        fontSize: isDesktop ? 24.0 : 18.0,
      ),
      _infoItem(
        context,
        icon: Icons.group,
        text: '개발 리더십: ReactJS 기반 SPA 개발 주도 및 팀 리딩 경험',
        // text: 'Development Leadership: ReactJS-based SPA development leadership and team leading experience',
        fontSize: isDesktop ? 24.0 : 18.0,
      ),
      _infoItem(
        context,
        icon: Icons.design_services,
        text: 'UI/UX 친화: Figma·Photoshop 활용, 사용자 중심 설계 가능',
        // text: 'UI/UX Strength: Proficient in Figma and Photoshop for user-centered design.',
        fontSize: isDesktop ? 24.0 : 18.0,
      ),
      _infoItem(
        context,
        icon: Icons.integration_instructions,
        text: '다양한 기술 경험: 넓은 개발 스펙트럼을 통한 문제 해결 능력 보유',
        // text: 'Extensive Technical Experience: Broad development spectrum with diverse technical expertise',
        fontSize: isDesktop ? 24.0 : 18.0,
      ),
    ].animate(interval: 700.ms).fadeIn(duration: 800.ms, delay: 500.ms);
  }

  Widget _infoItem(BuildContext context, {required IconData icon, required String text, required double fontSize}) {
    final isDesktop = ResponsiveBreakpoints.of(context).largerThan(TABLET);

    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: Colors.blue,
            size: isDesktop ? 32.0 : 26.0,
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              text,
              style: TextStyle(
                fontSize: fontSize,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
