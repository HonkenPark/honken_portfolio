import 'package:flutter/material.dart';
import 'package:honken_portfolio/widgets/menu_navigation_widget.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('about'),
      bottomNavigationBar: MenuNavigation(
        index: 1,
      ),
    );
  }
}
