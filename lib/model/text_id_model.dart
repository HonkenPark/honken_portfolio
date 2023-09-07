import 'dart:convert';

class TextIdModel {
  String jsonString = '''
  {
    "TOAST_MAIL_COPIED": [
      "메일주소가 클립보드에 복사되었습니다.",
      "The e-mail is copied into clipboard.",
      "メールアドレスがクリップボードにコピーされました。"
    ],
    "LABEL_HOME": [
      "홈",
      "HOME",
      "ホーム"
    ],
    "LABEL_ABOUT": [
      "경력",
      "ABOUT",
      "キャリア"
    ],
    "LABEL_PROJECT": [
      "프로젝트",
      "PROJECT",
      "プロジェクト"
    ],
    "LABEL_CONTACT": [
      "연락처",
      "CONTACT",
      "お問合せ"
    ],
    "HOME_GREETING": [
      "방문해주셔서 감사합니다.\\n항상 발전을 갈망하고,\\n변화에 대응하는 Flexible을\\n갖춘 developer,\\n\\n박홍근의 포트폴리오입니다.\\n\\n",
      "Portfolio: Honken Park's who is..\\n\\n· Constantly seeks improvement and embraces change.\\n· Striving to be flexible in adapting to new challenges.\\n· Embodies these all qualities.\\n\\n",
      "コンニチハ、\\n\\n私は常に向上を追求し、変化に対応する柔軟性を大切にする開発者です。新しい課題に適応する柔軟性を持つことを心がけています。\\n\\nこれはそのような開発者、\\n朴鴻根のポートフォリオです\\n\\n"
    ],
    "PROJECT_HISTORY_1": [
      "[2011년 11월 ~ 2015년 07월]\\n현대자동차 Premium AVN 2.0 Voice Handler 개발\\n\\n",
      "[Nov 2011 ~ Jul 2015]\\nDevelopment of HMC Premium AVN 2.0 Voice Handler\\n\\n",
      "[2011年11月 ~ 2015年07月]\\n現代自動車Premium AVN 2.0 Voice Handler開発\\n\\n"
    ],
    "PROJECT_HISTORY_2": [
      "[2015년 07월 ~ 2018년 11월]\\n현대자동차 Premium AVN 5.0 Voice Handler 개발\\n\\n",
      "[Jul 2015 ~ Nov 2018]\\nDevelopment of HMC Premium AVN 5.0 Voice Handler\\n\\n",
      "[2015年07月 ~ 2018年11月]\\n現代自動車 Premium AVN 5.0 Voice Handler開発\\n\\n"
    ],
    "PROJECT_HISTORY_3": [
      "[2018년 11월 ~ 2021년 10월]\\n폭스바겐 MIB3OI / ICAS-EU Speech Engine 및 SAC 개발\\n\\n",
      "[Nov 2018 ~ Oct 2021]\\nVW MIB3OI / ICAS-EU Speech Engine / SAC Development\\n\\n",
      "[2018年11月 ~ 2021年10月]\\nフォルクスワーゲンMIB3OI / ICAS-EU Speech Engine / SACの開発\\n\\n"
    ],
    "PROJECT_HISTORY_4": [
      "[2021년 10월 ~ 2022년 03월]\\n정부과제 제주특별자치도 민원서식업무 키오스크 Web Frontend 개발\\n\\n",
      "[Oct 2021 ~ Mar 2022]\\nGovernment project:\\nJeju Province Civil Document Assistant Kiosk Web Frontend Development\\n\\n",
      "[2021年10月 ~ 2022年03月]\\n政府課題済州特別自治道苦情書式業務キオスクWeb Frontendの開発\\n\\n"
    ],
    "PROJECT_HISTORY_5": [
      "[2022년 03월 ~ 2023년 04월]\\n정부과제 서울시 성동구 민원서식업무 키오스크 Web Frontend 개발\\n\\n",
      "[Mar 2022 ~ Apr 2023]\\nGovernment project:\\nSeongdong-gu Province Civil Document Assistant Kiosk Web Frontend Development\\n\\n",
      "[2022年03月 ~ 2023年04月]\\n政府課題ソウル市城東区苦情書式業務キオスクWeb Frontendの開発\\n\\n"
    ],
    "PROJECT_HISTORY_6": [
      "[2023년 04월 ~  현재]\\nFlutter 기반 사내 내부 프로젝트 투입",
      "[Apr 2023 ~ Now]\\nInternal project on based Flutter devlopment.",
      "[2023年04月 ~ 現在]\\nFlutter基盤社内内部プロジェクト投入"
    ],
    "PROJECT_TECH": [
      "사용기술",
      "Technologies Used",
      "使用技術"
    ]
  }
  ''';

  String getTextContent(String id, int language) {
    Map<String, dynamic> jsonData = jsonDecode(jsonString);
    if (jsonData.containsKey(id)) {
      return jsonData[id][language];
    } else {
      return "";
    }
  }
}
