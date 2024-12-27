import 'package:flutter/material.dart';

enum ScreenContentType {
  home(0, '홈', Icons.home),
  about(1, '소개', Icons.event_note),
  project(2, '프로젝트', Icons.work_history),
  // skill(3, '기술', Icons.lightbulb_rounded),
  contact(3, '연락처', Icons.account_circle);
  // home(0, 'HOME', Icons.home),
  // about(1, 'ABOUT', Icons.event_note),
  // project(2, 'PROJECT', Icons.work_history),
  // skill(3, 'SKILL', Icons.lightbulb_rounded),
  // contact(4, 'CONTACT', Icons.account_circle);

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

enum ClientType {
  hmcLge('assets/images/clients/client_hmc_lge.png', '[고급형 AVN]', '2011.11 ~ 2018.11', '현대자동차 고급형 프로젝트의 SW 구조 설계 및 양산 업무'),
  vw('assets/images/clients/client_vw.png', '[MIB3OI/ICAS-EU]', '2018.11 ~ 2021.10', 'Vocon5 WUW 및 SAC 업무 담당'),
  jeju('assets/images/clients/client_jeju.png', '[민원서식 키오스크]', '2021.10 ~ 2022.03', 'MPA 방식의 키오스크 프론트엔드 개발'),
  sd('assets/images/clients/client_sd.png', '[민원서식 키오스크]', '2022.03 ~ 2023.04', 'React 기반의 키오스크 프론트엔드 개발'),
  mz('assets/images/clients/client_mz.png', '[전사지원 프로젝트]', '2023.04 ~ 2023.11', '양산 업무 지원을 위한 빌드 툴 프로그램 개발'),
  saig('assets/images/clients/client_saig.png', '[ThinkAI 프로젝트]', '2024.02 ~ 2024.06', 'iFLYTEK 번역 앱의 프론트엔드 및 관리자페이지 구현'),
  samsung('assets/images/clients/client_samsung.png', '[무인보관함 프로젝트]', '2024.06 ~ 2025.02', '삼성전자 무인보관함 키오스크 프론트엔드 개발');

  const ClientType(
    this.path,
    this.projectName,
    this.projectPeriod,
    this.projectRole,
  );

  final String path;
  final String projectName;
  final String projectPeriod;
  final String projectRole;
}
