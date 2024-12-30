import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveBreakpoints.of(context).largerThan(TABLET);

    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Padding(
        padding: const EdgeInsets.all(52.0),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: isDesktop ? MediaQuery.sizeOf(context).width * 0.45 : MediaQuery.sizeOf(context).width * 0.8,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '저에 대해서,',
                    // 'Hi, I\'m',
                    style: TextStyle(
                      fontSize: isDesktop ? 14.0 : 10.0,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  ShaderMask(
                    shaderCallback: (bounds) => const LinearGradient(
                      colors: [
                        Color(0xFF6E7FEE), // 푸른색
                        Color(0xFF9B62F6),
                        Color(0xFFFF61A6),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(bounds),
                    child: Text(
                      '  다양한 개발 경험을 가진 개발자  ',
                      // '  Honken Park  ',
                      style: TextStyle(
                        fontSize: isDesktop ? 52.0 : 36.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  Text(
                    '10여 년 동안 다양한 기술 분야에서 경험을 쌓아왔으며, Flutter와 Dart를 기반으로 한 웹앱과 모바일앱 개발에 강점이 있습니다. 현재는 삼성전자 DS와의 키오스크 프로젝트에서 관제 웹페이지 개발을 담당하며, 사용자 경험을 최우선으로 고려한 효율적인 시스템을 구현하고 있습니다.\n\n저의 강점은 차량용 미들웨어 개발 경험을 바탕으로 시나리오 구조 설계 및 사용자 액션에 대한 인터랙션 처리에 뛰어난 능력을 가지고 있다는 점입니다. 또한, UX/UI 설계의 중요성을 인지하고 있어 Figma와 포토샵을 직접 활용하여 디자인과 개발의 경계를 허물며 빠른 생산성을 추구합니다. 과거 ReactJS를 이용한 정부 과제 프로젝트를 통해 팀 리딩을 하였고, 글로벌 프로젝트에서 미국과 독일 출장 경험을 통해 문제 해결 능력과 빠른 의사소통을 배우게 되었습니다. 이러한 경험들은 제가 다양한 상황에서도 유연하게 대응할 수 있는 능력을 키우는 데 많은 도움이 되었습니다.\n\n저는 항상 문제 해결을 위해 동료들과 소통하며, 각자의 역할을 잘 분배하여 팀이 원활하게 진행될 수 있도록 노력합니다. 제 개발자로서의 목표는 사용자 경험을 중시하며, 기술적으로도 뛰어난 품질을 자랑하는 서비스를 제공하는 데 초점을 맞추고 있습니다.',
                    // 'With over 10 years of experience in various technical fields, I currently focus on developing web and mobile applications using Flutter and Dart. I’m particularly involved in the kiosk project with Samsung Electronics DS, where I’m responsible for developing the control web pages, always prioritizing user experience to build efficient systems. My strengths lie in scenario structure design and interaction handling, which I gained from my background in automotive middleware development. Additionally, I’m passionate about UX/UI design and often use tools like Figma and Photoshop to bridge the gap between design and development, creating practical and impactful solutions. Having led a government project using ReactJS, I gained valuable experience in team leadership. My international exposure in the US and Germany helped me develop problem-solving skills and effective communication in diverse environments. These experiences have shaped my ability to adapt quickly and efficiently to various challenges. I thrive on collaborating with my teammates to find solutions and quickly allocate roles to ensure smooth project progress. My portfolio is centered on delivering services that emphasize exceptional user experiences while maintaining high technical quality.',
                    style: TextStyle(
                      fontSize: isDesktop ? 16.0 : 14.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      letterSpacing: 1.5,
                      wordSpacing: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
