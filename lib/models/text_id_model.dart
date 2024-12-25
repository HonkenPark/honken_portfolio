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
    "ABOUT_MENU_1": [
      "HMC 차량용 임베디드 SW 개발",
      "Develop IVI in HMC project",
      "HMC車両用組込みSWの開発"
    ],
    "ABOUT_MENU_2": [
      "VW Speech Application 개발",
      "Develop Volkswagen Speech App",
      "VW Speech Applicationの開発"
    ],
    "ABOUT_MENU_3": [
      "웹 프론트엔드: 개발 스펙트럼 확장",
      "Web dev: Expanding the spectrum",
      "政府課題とWeb: 開発領域の拡大"
    ],
    "ABOUT_MENU_4": [
      "Flutter 역량 강화와 주니어 개발자 리딩",
      "Leading the Junior developers",
      "Flutter 技術習得と後任養成"
    ],
    "ABOUT_CONTENT_1": [
      "입사 후, 약 7년 간 HMC/LGE의 IVI 프로젝트에서 Embedded C++과 Qt/Qml로 음성인식 미들웨어 개발을 진행했습니다.\\n\\nPAVN5 프로젝트의 초기 구조를 설계하고 Voice Handler라 불리는 미들웨어 개발을 진행하면서 음성인식과 연동되는 수많은 타 앱들과의 이벤트 핸들링을 경험하였고 해당 앱의 담당자들과 협의를 진행하며 개발 커뮤니케이션 능력을 향상시켰습니다.\\n\\n또한 이슈 발생 시, 가장 먼저 이슈를 분석하고 각 부서에 할당해주는 매니지먼트 역할도 진행하며 프로젝트 리딩을 진행하였습니다.\\n\\n이슈 대응 능력을 높이 평가받아 해외 향지 양산을 위한 IQS 등의 북미, 유럽 출장에도 전담하여 대응하였으며 이 과정에서 글로벌 커뮤니케이션도 배양시킬 수 있었습니다.",
      "Voice Middleware Development (HMC/LGE)\\n- Created voice middleware using Embedded C++ and Qt/Qml for HMC/LGE.\\n- Designed PAVN5 project structure and developed Voice Handler middleware.\\n- Enhanced development communication skills by collaborating with various voice recognition apps.\\nIssue Resolution and Project Leadership\\n- Proactively analyzed and resolved issues, assuming management roles.\\n- Recognized for efficient issue handling, enabling successful overseas trips to North America and Europe, including IQS.\\n- Developed global communication skills during international assignments.",
      "入社後、約7年間、HMC/LGEのIVIプロジェクトでEmbedded C++とQt/Qmlで音声認識ミドルウェア開発を進めました。\\n\\nPAVN5プロジェクトの初期構造を設計し、Voice Handlerと呼ばれるミドルウェアの開発を進めながら、音声認識と連動する多数の他のアプリとのイベントハンドリングを経験し、そのアプリの担当者と協議を進め、開発コミュニケーション能力を向上させました。\\n\\nまた、課題発生時、まずまず課題を分析し、各部署に割り当ててくれるマネジメントの役割も進め、プロジェクトリーディングを進めました。\\n\\n課題対応能力を高く評価され、海外の香り量産のためのIQSなどの北米、欧州出張にも専担して対応し、この過程でグローバルコミュニケーションも培養させることができました。"
    ],
    "ABOUT_CONTENT_2": [
      "폭스바겐의 음성인식인 Speech Application 업무에 투입되어 Cerence社의 음성인식 엔진인 Vocon5를 포팅하는 업무를 맡았습니다.\\n\\n또한 Speech Assistant Controller(SAC)라 불리는 기능도 함께 담당하여 이와 관련된 Vocon5 기능 중 CDFW의 WUW(Wake-up word) 기능 구현을 전담하였고 이를 위해 RingBuffer를 설계 및 구현하였습니다.\\n\\n이 RingBuffer는 추후 탑재된 Amazon Alexa에서도 함께 사용하게 되어 기능성을 인정받았습니다.\\n\\n이전 HMC 프로젝트의 대응 능력을 인정받아 폭스바겐 본사로의 해외 출장도 전담하게 되었으며, COVID-9 이후로는 매주 수요일 Zoom을 통해 Online Meeting에 참여하여 고객사 대응 및 협의를 진행하였습니다.",
      "Volkswagen Speech App (Cerence Vocon5)\\n- Tasked with porting Cerence's Vocon5 voice recognition engine for VW's Speech App.\\n- Managed Speech Assistant Controller (SAC) responsibilities, focusing on implementing Wake-up word (WUW) functionality.\\n- Designed and implemented RingBuffer, later recognized for its versatility with Amazon Alexa integration.\\nInternational Collaboration\\n- Acknowledged for previous HMC project's responsiveness, leading to international assignments, including trips to Volkswagen headquarters.\\n- Adapted to remote work during COVID-19, regularly participating using Zoom Online Meetings for customer engagement.",
      "フォルクスワーゲンの音声認識であるSpeech Application業務に投入され、Cerence社の音声認識エンジンであるVocon5を移植する業務を引き受けました。\\n\\nまた、Speech Assistant Controller(SAC)と呼ばれる機能も一緒に担当し、これに関連するVocon5機能のうち、CDFWのWUW(Wake-up word)機能の実装を専担し、そのためにRingBufferを設計および実装しました。\\n\\nこのRingBufferは今後搭載されたAmazon Alexaでも一緒に使用することになり、機能性が認められました。\\n\\n以前のHMCプロジェクトの対応能力を認められ、フォルクスワーゲン本社への海外出張も専門になり、COVID-9以降は毎週水曜日のZoomを通じてオンラインミーティングに参加し、お客様の対応と協議を進めました。"
    ],
    "ABOUT_CONTENT_3": [
      "차량 프로젝트 이후, 임베디드 영역에 머물러 있는 개발 영역을 확장시키고 싶었습니다. 이전부터 관심이 있었던 Web Frontend 개발파트 업무를 담당하여 HTML과 CSS, Javascript 기반으로 정부과제 프로젝트인 제주특별자치도 민원서식 키오스크를 개발하였습니다. 웹 개발의 경험이 많지 않은 상태에서 맡은 첫 프로젝트라 수 없이 야근을 하며 jQuery를 통해 엘리먼트를 하나하나 개발자 검증을 했던 게 기억이 남습니다.\\n\\n그리고 개발 외의 역량 향상을 위해 UX/UI에서 사용 중인 Figma도 스터디하였으며, 두 번째 정부과제인 성동구청 프로젝트에서는 정부과제 최초로 React를 도입하여 Frontend 개발을 리딩함과 동시에 UX/UI 파트의 요구사항을 중간에서 조정하는 매니지먼트 역할도 수행할 수 있었습니다.",
      "Expanding Development Horizons\\n- Following IVI projects, sought to broaden expertise beyond embedded development.\\n- Took on Web Frontend development responsibilities for a government project, developing a kiosk app using HTML, CSS, and Javascript.\\n- Despite limited prior web development experience, successfully completed the first project, involving extensive jQuery work and developer validation.\\nSkill Enhancement and Leadership\\n- Committed to skill enhancement beyond development, studied Figma for UX/UI.\\n- Introduced React for the second project, leading Frontend and managing UX/UI requirements.",
      "車両プロジェクト以来、組み込み領域にとどまっている開発領域を拡張させたいと思いました。 以前から関心があったWeb Frontend開発パート業務を担当し、HTMLやCSS、Javascriptベースの政府課題プロジェクトである済州特別自治も、苦情書式キオスクを開発しました。 Web開発の経験が多くない状態で引き受けた初めてのプロジェクトとはいえ、夜勤をしてjQueryを通じてエレメントを一つ一つ開発者検証をしたのが記憶が残ります。\\n\\nまた、開発外の能力向上のためにUX/UIで使用中のFigmaもスタディしており、2番目の政府課題である城東区庁プロジェクトでは政府課題最初にReactを導入してFrontend開発をリーディングするとともに、UX/UIパートの要求事項を中間 で調整するマネジメントの役割も果たすことができました。"
    ],
    "ABOUT_CONTENT_4": [
      "React, NextJS 등 Frontend에 관심을 갖게 된 이후로 최근 가장 트렌디한 프레임워크인 Flutter의 필요성에 대해 느끼게 되었으며, 이 Flutter의 전사적 역량 강화를 위해 새로 투입된 팀의 주니어 개발자들과 함께 내부 프로젝트를 진행하며, Frontend 개발 (Dart/Flutter), Backend 개발 (NodeJS)의 전반적인 진행을 리딩하고 있습니다.\\n\\n1차 프로젝트는 팀에서 단순하게 배치 파일을 CLI로 실행하여 진행하고 있던 Language Model 빌드 업무를 Flutter로 Build Tool을 개발하여 사용자의 Human Error를 없애는데 일조하였습니다. 현재는 이전 키오스크 프로젝트의 경험을 살려 2차 프로젝트로 Flutter와 NodeJS를 이용한 사내 까페테리아의 사용자/관리자 프로그램을 구현하고 있습니다.",
      "Transition to Trending Technologies\\n- Recognized the significance of Flutter, a leading-edge framework.\\n- Leading an internal project to enhance Flutter capabilities, collaborating with junior developers.\\n- Overseeing end-to-end development, including Frontend (Dart/Flutter) and Backend (NodeJS).\\nProjects Highlights\\n- Develop Flutter Build Tool, reducing human errors.\\n- Leveraging previous kiosk project experience, currently implementing a user/admin program for the company's cafeteria using Flutter and NodeJS.",
      "React、NextJSなどFrontendに関心を持つようになった後、最近最もトレンディなフレームワークであるFlutterの必要性を感じることになり、このFlutterの全社的能力強化のために新たに投入されたチームのジュニア開発者たちと共に内部プロジェクトを進行し、 Frontend開発(Dart/Flutter)、Backend開発(NodeJS)の全体的な進行をリーディングしています。\\n\\n1次プロジェクトはチームで単純にバッチファイルをCLIで実行して進行していたLanguage Modelビルド業務をFlutterでBuild Toolを開発し、ユーザーのHuman Errorをなくすことに一助となりました。 現在は、以前のキオスクプロジェクトの経験を活かし、2次プロジェクトとしてFlutterとNodeJSを利用した社内カフェテリアのユーザー/管理者プログラムを実装しています。"
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
