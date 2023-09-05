import 'dart:convert';

class TextIdModel {
  String jsonString = '''
  {
    "LABEL_HOME": [
      "홈",
      "HOME",
      "호무"
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
