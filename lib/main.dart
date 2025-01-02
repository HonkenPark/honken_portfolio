import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:honken_portfolio/translations/app_translations.dart';
import 'package:honken_portfolio/views/base_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  if (!kIsWeb) {
    runApp(const UnsupportedPlatformApp());
    return;
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => ResponsiveBreakpoints(
        breakpoints: const [
          Breakpoint(start: 0, end: 480, name: MOBILE),
          Breakpoint(start: 481, end: 768, name: TABLET),
          Breakpoint(start: 769, end: 1024, name: 'SMALL_DESKTOP'),
          Breakpoint(start: 1025, end: 1920, name: DESKTOP),
          Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
        child: child!,
      ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      title: 'Honken\'s Portfolio',
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const BaseScreen(),
        ),
      ],
      translations: AppTranslations(),
      locale: const Locale('ko', 'KR'),
      fallbackLocale: const Locale('en', 'US'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ko', 'KR'),
        Locale('en', 'US'),
        Locale('ja', 'JP'),
        Locale('zh', 'CN'),
        Locale('es', 'ES'),
      ],
    );
  }
}

class UnsupportedPlatformApp extends StatelessWidget {
  const UnsupportedPlatformApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '🔒지원하지 않는 플랫폼',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const Scaffold(
        body: Center(
          child: Text(
            '웹에서 확인해주세요.👀',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
