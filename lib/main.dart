import 'package:flutter/material.dart';
import 'package:honken_portfolio/screens/main_screens.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreen(
        navIndex: 0,
      ),
    );
  }
}
