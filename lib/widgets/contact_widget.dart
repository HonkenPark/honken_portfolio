import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:honken_portfolio/models/text_id_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:honken_portfolio/controllers/setting_controller.dart';

class ContactWidget extends StatefulWidget {
  const ContactWidget({super.key});

  @override
  State<ContactWidget> createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {
  TextIdModel textId = TextIdModel();
  FToast fToast = FToast();
  bool isHover1 = false, isHover2 = false, isHover3 = false, isHover4 = false, isHover5 = false, isHoverMail = false;

  @override
  void initState() {
    fToast.init(context);
    super.initState();
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  void _copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text));
    fToast.showToast(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.02,
          vertical: MediaQuery.of(context).size.width * 0.01,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width),
          color: const Color(0xFF666666),
        ),
        child: Text(
          textId.getTextContent('TOAST_MAIL_COPIED', Get.find<SettingController>().language.value),
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.01,
            color: Colors.white,
          ),
        ),
      ),
      gravity: ToastGravity.BOTTOM,
      toastDuration: const Duration(seconds: 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    Get.put(SettingController());
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (isPortrait)
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isHover1 = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isHover1 = false; // 호버 종료 시 테두리 제거
                    });
                  },
                  child: GestureDetector(
                    onTap: () {
                      _launchUrl('https://github.com/HonkenPark');
                    },
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.width * 0.15,
                          decoration: BoxDecoration(
                            border: isHover1 ? Border.all(width: MediaQuery.of(context).size.width * 0.003, color: Colors.white) : const Border.symmetric(),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/contact_github_white.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isHover2 = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isHover2 = false; // 호버 종료 시 테두리 제거
                    });
                  },
                  child: GestureDetector(
                    onTap: () {
                      _launchUrl('https://www.linkedin.com/in/honken-park');
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.width * 0.15,
                      decoration: BoxDecoration(
                        border: isHover2 ? Border.all(width: MediaQuery.of(context).size.width * 0.003, color: Colors.white) : const Border.symmetric(),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/contact_linkedin_white.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isHover3 = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isHover3 = false; // 호버 종료 시 테두리 제거
                    });
                  },
                  child: GestureDetector(
                    onTap: () {
                      _launchUrl('https://honken.tistory.com');
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.width * 0.15,
                      decoration: BoxDecoration(
                        border: isHover3 ? Border.all(width: MediaQuery.of(context).size.width * 0.003, color: Colors.white) : const Border.symmetric(),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/contact_tistory_white.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isHover4 = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isHover4 = false; // 호버 종료 시 테두리 제거
                    });
                  },
                  child: GestureDetector(
                    onTap: () {
                      _launchUrl('https://www.figma.com/@honkenpark');
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.width * 0.15,
                      decoration: BoxDecoration(
                        border: isHover4 ? Border.all(width: MediaQuery.of(context).size.width * 0.003, color: Colors.white) : const Border.symmetric(),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/contact_figma_white.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isHover5 = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isHover5 = false; // 호버 종료 시 테두리 제거
                    });
                  },
                  child: GestureDetector(
                    onTap: () {
                      _launchUrl('https://www.hackerrank.com/Honken_Park');
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.width * 0.15,
                      decoration: BoxDecoration(
                        border: isHover5 ? Border.all(width: MediaQuery.of(context).size.width * 0.003, color: Colors.white) : const Border.symmetric(),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/contact_hr_white.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          if (!isPortrait)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isHover1 = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isHover1 = false; // 호버 종료 시 테두리 제거
                    });
                  },
                  child: GestureDetector(
                    onTap: () {
                      _launchUrl('https://github.com/HonkenPark');
                    },
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.08,
                          height: MediaQuery.of(context).size.width * 0.08,
                          decoration: BoxDecoration(
                            border: isHover1 ? Border.all(width: MediaQuery.of(context).size.width * 0.003, color: Colors.white) : const Border.symmetric(),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/contact_github_white.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isHover2 = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isHover2 = false; // 호버 종료 시 테두리 제거
                    });
                  },
                  child: GestureDetector(
                    onTap: () {
                      _launchUrl('https://www.linkedin.com/in/honken-park');
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.08,
                      height: MediaQuery.of(context).size.width * 0.08,
                      decoration: BoxDecoration(
                        border: isHover2 ? Border.all(width: MediaQuery.of(context).size.width * 0.003, color: Colors.white) : const Border.symmetric(),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/contact_linkedin_white.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isHover3 = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isHover3 = false; // 호버 종료 시 테두리 제거
                    });
                  },
                  child: GestureDetector(
                    onTap: () {
                      _launchUrl('https://honken.tistory.com');
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.08,
                      height: MediaQuery.of(context).size.width * 0.08,
                      decoration: BoxDecoration(
                        border: isHover3 ? Border.all(width: MediaQuery.of(context).size.width * 0.003, color: Colors.white) : const Border.symmetric(),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/contact_tistory_white.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isHover4 = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isHover4 = false; // 호버 종료 시 테두리 제거
                    });
                  },
                  child: GestureDetector(
                    onTap: () {
                      _launchUrl('https://www.figma.com/@honkenpark');
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.08,
                      height: MediaQuery.of(context).size.width * 0.08,
                      decoration: BoxDecoration(
                        border: isHover4 ? Border.all(width: MediaQuery.of(context).size.width * 0.003, color: Colors.white) : const Border.symmetric(),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/contact_figma_white.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isHover5 = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isHover5 = false; // 호버 종료 시 테두리 제거
                    });
                  },
                  child: GestureDetector(
                    onTap: () {
                      _launchUrl('https://www.hackerrank.com/Honken_Park');
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.08,
                      height: MediaQuery.of(context).size.width * 0.08,
                      decoration: BoxDecoration(
                        border: isHover5 ? Border.all(width: MediaQuery.of(context).size.width * 0.003, color: Colors.white) : const Border.symmetric(),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/contact_hr_white.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.15,
          ),
          MouseRegion(
            onEnter: (_) {
              setState(() {
                isHoverMail = true;
              });
            },
            onExit: (_) {
              setState(() {
                isHoverMail = false; // 호버 종료 시 테두리 제거
              });
            },
            child: GestureDetector(
              onTap: () {
                _copyToClipboard('honken.park@gmail.com');
                // _launchUrl(
                //     'mailto:honken.park@gmail.com?subject=Subject&body=Body');
              },
              child: Text(
                'honken.park@gmail.com',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width * 0.02,
                  color: isHoverMail ? Colors.blue : Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.02,
          ),
        ],
      ),
    );
  }
}
