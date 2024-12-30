import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: const BoxDecoration(
                            border: Border.symmetric(),
                            image: DecorationImage(
                              image: AssetImage('assets/images/contacts/contact_github_white.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 120,
                          decoration: const BoxDecoration(
                            border: Border.symmetric(),
                            image: DecorationImage(
                              image: AssetImage('assets/images/contacts/contact_linkedin_white.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 120,
                          decoration: const BoxDecoration(
                            border: Border.symmetric(),
                            image: DecorationImage(
                              image: AssetImage('assets/images/contacts/contact_tistory_white.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 120,
                          decoration: const BoxDecoration(
                            border: Border.symmetric(),
                            image: DecorationImage(
                              image: AssetImage('assets/images/contacts/contact_figma_white.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 120,
                          decoration: const BoxDecoration(
                            border: Border.symmetric(),
                            image: DecorationImage(
                              image: AssetImage('assets/images/contacts/contact_hr_white.png'),
                              fit: BoxFit.fill,
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
              child: Text(
                'honken.park@gmail.com',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.sizeOf(context).width * 0.02,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
