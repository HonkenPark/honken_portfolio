import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;
    final isTablet = ResponsiveBreakpoints.of(context).smallerThan('SMALL_DESKTOP');

    Future<void> launch(String url) async {
      if (!await launchUrl(Uri.parse(url))) {
        throw Exception('Could not launch $url');
      }
    }

    void copyToClipboard(String text) {
      Clipboard.setData(ClipboardData(text: text));
      Get.snackbar(
        'copy_complete'.tr,
        'mail_address_copied'.tr,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.white,
        colorText: Colors.black,
        snackStyle: SnackStyle.GROUNDED,
        messageText: Text(
          'mail_address_copied'.tr,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  right: 24.0,
                  bottom: 120.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    isMobile
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () => launch('https://github.com/HonkenPark'),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    border: Border.symmetric(),
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/contacts/contact_github_white.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              GestureDetector(
                                onTap: () => launch('https://www.linkedin.com/in/honken-park'),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    border: Border.symmetric(),
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/contacts/contact_linkedin_white.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              GestureDetector(
                                onTap: () => launch('https://honken.tistory.com'),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    border: Border.symmetric(),
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/contacts/contact_tistory_white.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              GestureDetector(
                                onTap: () => launch('https://www.figma.com/@honkenpark'),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    border: Border.symmetric(),
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/contacts/contact_figma_white.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => launch('https://www.hackerrank.com/Honken_Park'),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    border: Border.symmetric(),
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/contacts/contact_hr_white.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () => launch('https://github.com/HonkenPark'),
                                child: Container(
                                  width: isTablet ? 80 : 120,
                                  height: isTablet ? 80 : 120,
                                  decoration: const BoxDecoration(
                                    border: Border.symmetric(),
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/contacts/contact_github_white.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => launch('https://www.linkedin.com/in/honken-park'),
                                child: Container(
                                  width: isTablet ? 80 : 120,
                                  height: isTablet ? 80 : 120,
                                  decoration: const BoxDecoration(
                                    border: Border.symmetric(),
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/contacts/contact_linkedin_white.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => launch('https://honken.tistory.com'),
                                child: Container(
                                  width: isTablet ? 80 : 120,
                                  height: isTablet ? 80 : 120,
                                  decoration: const BoxDecoration(
                                    border: Border.symmetric(),
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/contacts/contact_tistory_white.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => launch('https://www.figma.com/@honkenpark'),
                                child: Container(
                                  width: isTablet ? 80 : 120,
                                  height: isTablet ? 80 : 120,
                                  decoration: const BoxDecoration(
                                    border: Border.symmetric(),
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/contacts/contact_figma_white.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => launch('https://www.hackerrank.com/Honken_Park'),
                                child: Container(
                                  width: isTablet ? 80 : 120,
                                  height: isTablet ? 80 : 120,
                                  decoration: const BoxDecoration(
                                    border: Border.symmetric(),
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/contacts/contact_hr_white.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () => copyToClipboard('honken.park@gmail.com'),
                child: Text(
                  'honken.park@gmail.com',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.sizeOf(context).width * 0.02,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
