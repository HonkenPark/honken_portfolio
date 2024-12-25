import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFF1E1E1E),
      body: Animate(effects: const [FadeEffect(), ScaleEffect()], child: const Text("Hello World!").animate().fade().scale()),
    );
  }
}
/**
 * const Divider(
            indent: 150.0,
            endIndent: 150.0,
            thickness: 1.0,
            color: Colors.indigo,
          ),
 */