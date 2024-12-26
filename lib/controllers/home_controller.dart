import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomeController extends GetxController {
  Widget get hr => Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Container(
          height: 2,
          color: const Color(0x8080DDFF),
          margin: const EdgeInsets.symmetric(vertical: 16),
        ).animate().scale(duration: 600.ms, alignment: Alignment.centerLeft),
      );

  List<Widget> infoItems = [
    Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.transparent,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.flutter_dash,
            color: Colors.blue,
            size: 32.0,
          ),
          SizedBox(width: 8.0),
          Flexible(
            child: Text(
              'Flutter Expert: Extensive experience in cross-platform web and mobile app development.',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
    Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.transparent,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.group,
            color: Colors.blue,
            size: 32.0,
          ),
          SizedBox(width: 8.0),
          Flexible(
            child: Text(
              'ReactJS Leadership: Proven track record in leading SPA development projects.',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
    Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.transparent,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.design_services,
            color: Colors.blue,
            size: 32.0,
          ),
          SizedBox(width: 8.0),
          Flexible(
            child: Text(
              'UI/UX Strength: Proficient in Figma and Photoshop for user-centered design.',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
    Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.transparent,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.integration_instructions,
            color: Colors.blue,
            size: 32.0,
          ),
          SizedBox(width: 8.0),
          Flexible(
            child: Text(
              'Extensive Technical Experience: Broad development spectrum with diverse technical expertise',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
  ].animate(interval: 1200.ms).fadeIn(duration: 1500.ms, delay: 300.ms);
}
