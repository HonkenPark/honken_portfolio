import 'package:flutter/material.dart';
import 'package:honken_portfolio/widgets/menu_navigation_widget.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('contact'),
      bottomNavigationBar: MenuNavigation(
        index: 2,
      ),
    );
  }
}
