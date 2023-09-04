import 'package:flutter/material.dart';

class MenuNavigation extends StatefulWidget {
  final int index;

  const MenuNavigation({
    super.key,
    required this.index,
  });

  @override
  State<MenuNavigation> createState() => _MenuNavigation();
}

class _MenuNavigation extends State<MenuNavigation> {
  int _selectedIndex = 0;

  @override
  void initState() {
    _selectedIndex = widget.index;
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      print('index: $index');
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
      currentIndex: _selectedIndex,
      showUnselectedLabels: true,
      iconSize: 42.0,
      selectedItemColor: const Color(0xFFFF6347),
      unselectedItemColor: Colors.white,
      onTap: _onItemTapped,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
