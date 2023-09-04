import 'package:flutter/material.dart';
import 'package:honken_portfolio/widgets/menu_navigation_widget.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('project'),
      bottomNavigationBar: MenuNavigation(
        index: 2,
      ),
    );
  }
}
