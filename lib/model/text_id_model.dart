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
      "방문해주셔서 감사합니다.\\n항상 발전을 갈망하고,\\n변화에 대응하는 Flexible을\\n갖춘 developer,\\n\\n박홍근의 포트폴리오입니다.",
      "Portfolio: Honken Park's who is..\\n\\n👉Constantly seeks improvement and embraces change.\\n👉Striving to be flexible in adapting to new challenges.\\n👉Embodies these all qualities.",
      "コンニチハ、\\n\\n私は常に向上を追求し、変化に対応する柔軟性を大切にする開発者です。新しい課題に適応する柔軟性を持つことを心がけています。\\n\\nこれはそのような開発者、\\n朴鴻根のポートフォリオです"
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
