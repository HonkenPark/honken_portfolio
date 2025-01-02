import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
                    'about_pre_intro'.tr,
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
                      'about_title'.tr,
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
                    'about_description'.tr,
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
