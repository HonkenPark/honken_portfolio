import 'package:flutter/material.dart';
import 'package:honken_portfolio/widgets/content_widget.dart';

class MainScreen extends StatefulWidget {
  final int index, theme, lang;
  const MainScreen({
    super.key,
    required this.index,
    required this.theme,
    required this.lang,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int index, theme, lang;

  @override
  void initState() {
    index = widget.index;
    theme = widget.theme;
    lang = widget.lang;
    super.initState();
  }

  void _onItemTapped(int input) {
    setState(() {
      index = input;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Content(index: index),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '홈',
            backgroundColor: Color(0xFF656C7A),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined),
            label: '경력',
            backgroundColor: Color(0xFF656C7A),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_history_outlined),
            label: '프로젝트',
            backgroundColor: Color(0xFF656C7A),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail_outlined),
            label: '연락처',
            backgroundColor: Color(0xFF656C7A),
          ),
        ],
        currentIndex: index,
        showUnselectedLabels: true,
        iconSize: 42.0,
        selectedItemColor: const Color(0xFFFF6347),
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
