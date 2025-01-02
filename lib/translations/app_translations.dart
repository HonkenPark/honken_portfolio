import 'package:get/get.dart';
import 'package:honken_portfolio/translations/ko_KR/ko_kr_translations.dart';
import 'package:honken_portfolio/translations/en_US/en_us_translations.dart';
import 'package:honken_portfolio/translations/ja_JP/ja_jp_translations.dart';
import 'package:honken_portfolio/translations/zh_CN/zh_cn_translations.dart';
import 'package:honken_portfolio/translations/es_ES/es_es_translations.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ko_KR': koKr,
        'en_US': enUs,
        'ja_JP': jaJp,
        'zh_CN': zhCn,
        'es_ES': esEs,
      };
}
