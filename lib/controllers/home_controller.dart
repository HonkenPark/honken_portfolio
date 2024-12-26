import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomeController extends GetxController {
  Widget get hr => Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Container(
          height: 2,
          color: const Color(0x8080DDFF),
          margin: const EdgeInsets.symmetric(vertical: 16),
        ).animate().scale(duration: 600.ms, alignment: Alignment.centerLeft),
      );

  List<Widget> infoItems = [
    Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.transparent,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.flutter_dash,
            color: Colors.blue,
            size: 32.0,
          ),
          SizedBox(width: 8.0),
          Flexible(
            child: Text(
              'Flutter 전문가: 웹·모바일 크로스 플랫폼 앱 개발 능력 보유',
              // 'Flutter Expert: Extensive experience in cross-platform web and mobile app development.',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
    Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.transparent,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.group,
            color: Colors.blue,
            size: 32.0,
          ),
          SizedBox(width: 8.0),
          Flexible(
            child: Text(
              '개발 리더십: ReactJS 기반 SPA 개발 주도 및 팀 리딩 경험',
              // 'Development Leadership: ReactJS-based SPA development leadership and team leading experience',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
    Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.transparent,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.design_services,
            color: Colors.blue,
            size: 32.0,
          ),
          SizedBox(width: 8.0),
          Flexible(
            child: Text(
              'UI/UX 친화: Figma·Photoshop 활용, 사용자 중심 설계 가능',
              // 'UI/UX Strength: Proficient in Figma and Photoshop for user-centered design.',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
    Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.transparent,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.integration_instructions,
            color: Colors.blue,
            size: 32.0,
          ),
          SizedBox(width: 8.0),
          Flexible(
            child: Text(
              '다양한 기술 경험: 넓은 개발 스펙트럼을 통한 문제 해결 능력 보유',
              // 'Extensive Technical Experience: Broad development spectrum with diverse technical expertise',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
  ].animate(interval: 700.ms).fadeIn(duration: 800.ms, delay: 500.ms);
}
