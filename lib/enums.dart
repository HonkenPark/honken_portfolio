import 'package:flutter/material.dart';

enum ScreenContentType {
  home(0, 'HOME', Icons.home),
  about(1, 'ABOUT', Icons.event_note),
  project(2, 'PROJECT', Icons.work_history),
  skill(3, 'SKILL', Icons.lightbulb_rounded),
  contact(4, 'CONTACT', Icons.account_circle);

  const ScreenContentType(
    this.value,
    this.name,
    this.icon,
  );

  final int value;
  final String name;
  final IconData icon;

  static ScreenContentType fromValue(int value) {
    return ScreenContentType.values.firstWhere(
      (type) => type.value == value,
      orElse: () => ScreenContentType.home,
    );
  }

  static String getName(int value) {
    return ScreenContentType.values
        .firstWhere(
          (type) => type.value == value,
          orElse: () => ScreenContentType.home,
        )
        .name;
  }
}
