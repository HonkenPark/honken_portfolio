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
        text: 'Flutter를 통한 웹·모바일 크로스 플랫폼 앱 개발 능력 보유',
        fontSize: isDesktop ? 24.0 : 18.0,
      ),
      _infoItem(
        context,
        icon: Icons.group,
        text: 'React 기반 SPA 개발 주도 및 팀 리딩 경험',
        fontSize: isDesktop ? 24.0 : 18.0,
      ),
      _infoItem(
        context,
        icon: Icons.api,
        text: 'Express 및 Koa를 활용한 API 설계 및 SSR 구현 경험',
        fontSize: isDesktop ? 24.0 : 18.0,
      ),
      _infoItem(
        context,
        icon: Icons.integration_instructions,
        text: '다양한 디바이스에서의 성능 튜닝, 로깅, 디버깅 노하우를 통해 안정성 높은 서비스를 구현',
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
