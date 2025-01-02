import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum ScreenContentType {
  home(0, 'screen_home', Icons.home),
  about(1, 'screen_about', Icons.event_note),
  project(2, 'screen_project', Icons.work_history),
  // skill(3, 'screen_skill', Icons.lightbulb_rounded),
  contact(3, 'screen_contact', Icons.account_circle);

  const ScreenContentType(
    this.value,
    this.translationKey,
    this.icon,
  );

  final int value;
  final String translationKey;
  final IconData icon;

  static ScreenContentType fromValue(int value) {
    return ScreenContentType.values.firstWhere(
      (type) => type.value == value,
      orElse: () => ScreenContentType.home,
    );
  }

  String get name => translationKey.tr;
}

enum ClientType {
  samsung(
    'assets/images/clients/client_samsung.png',
    'client_title_samsung',
    'client_period_samsung',
    'client_role_samsung',
    'client_description_samsung',
  ),
  saig(
    'assets/images/clients/client_saig.png',
    'client_title_saig',
    'client_period_saig',
    'client_role_saig',
    'client_description_saig',
  ),
  mz(
    'assets/images/clients/client_mz.png',
    'client_title_mz',
    'client_period_mz',
    'client_role_mz',
    'client_description_mz',
  ),
  sd(
    'assets/images/clients/client_sd.png',
    'client_title_sd',
    'client_period_sd',
    'client_role_sd',
    'client_description_sd',
  ),
  jeju(
    'assets/images/clients/client_jeju.png',
    'client_title_jeju',
    'client_period_jeju',
    'client_role_jeju',
    'client_description_jeju',
  ),
  vw(
    'assets/images/clients/client_vw.png',
    'client_title_vw',
    'client_period_vw',
    'client_role_vw',
    'client_description_vw',
  ),
  hmcLge(
    'assets/images/clients/client_hmc_lge.png',
    'client_title_hmcLge',
    'client_period_hmcLge',
    'client_role_hmcLge',
    'client_description_hmcLge',
  );

  const ClientType(
    this.path,
    this.projectName,
    this.projectPeriod,
    this.projectRole,
    this.projectDescription,
  );

  final String path;
  final String projectName;
  final String projectPeriod;
  final String projectRole;
  final String projectDescription;

  String get name => projectName.tr;
  String get period => projectPeriod.tr;
  String get role => projectRole.tr;
  String get description => projectDescription.tr;
}
