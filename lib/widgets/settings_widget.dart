import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  final bool isSetting;
  const Settings({
    super.key,
    required this.isSetting,
  });

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  late bool isSetting, isLanguage, isTheme;

  @override
  void initState() {
    isSetting = widget.isSetting;
    isLanguage = false;
    isTheme = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    toggleSetting() {
      setState(() {
        if (isSetting) {
          isSetting = false;
          isLanguage = false;
          isTheme = false;
        } else {
          isSetting = true;
        }
      });
    }

    toggleLanguage() {
      setState(() {
        isLanguage = !isLanguage;
        isTheme = false;
      });
    }

    toggleTheme() {
      setState(() {
        isTheme = !isTheme;
        isLanguage = false;
      });
    }

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: toggleSetting,
              child: const SizedBox(
                width: 30,
                height: 30,
                child: Icon(
                  Icons.settings_outlined,
                  color: Color(0xFFA8A8A8),
                ),
              ),
            ),
            if (isSetting)
              Column(
                children: [
                  GestureDetector(
                    onTap: toggleLanguage,
                    child: const SizedBox(
                      width: 30,
                      height: 30,
                      child: Icon(
                        Icons.language_outlined,
                        color: Color(0xFFA8A8A8),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: toggleTheme,
                    child: const SizedBox(
                      width: 30,
                      height: 30,
                      child: Icon(
                        Icons.color_lens_outlined,
                        color: Color(0xFFA8A8A8),
                      ),
                    ),
                  ),
                ],
              )
            else
              const SizedBox(
                width: 60,
                height: 60,
              ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (isLanguage)
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 30,
                        height: 30,
                        child: const Text(
                          '한',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFA8A8A8),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 30,
                        height: 30,
                        child: const Text(
                          'A',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFA8A8A8),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 30,
                        height: 30,
                        child: const Text(
                          'あ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFA8A8A8),
                          ),
                        ),
                      ),
                    ],
                  )
                else
                  const SizedBox(
                    height: 30,
                  ),
                if (isTheme)
                  const Row(
                    children: [
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: Icon(
                          Icons.circle,
                          color: Color.fromARGB(255, 37, 52, 80),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: Icon(
                          Icons.circle,
                          color: Color(0xFFE39B9B),
                        ),
                      ),
                    ],
                  )
                else
                  const SizedBox(
                    height: 30,
                  ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
