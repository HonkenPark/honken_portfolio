import 'package:flutter/widgets.dart';

List<Map<String, dynamic>> imgPath = [
  {'path': 'assets/img/qt.png', 'enable': false},
  {'path': 'assets/img/c.png', 'enable': false},
  {'path': 'assets/img/cpp.png', 'enable': false},
  {'path': 'assets/img/python.png', 'enable': false},
  {'path': 'assets/img/html.png', 'enable': false},
  {'path': 'assets/img/css.png', 'enable': false},
  {'path': 'assets/img/javascript.png', 'enable': false},
  {'path': 'assets/img/react.png', 'enable': false},
  {'path': 'assets/img/jquery.png', 'enable': false},
  {'path': 'assets/img/nodejs.png', 'enable': false},
  {'path': 'assets/img/bootstrap.png', 'enable': false},
  {'path': 'assets/img/antd.png', 'enable': false},
  {'path': 'assets/img/nginx.png', 'enable': false},
  {'path': 'assets/img/dart.png', 'enable': false},
  {'path': 'assets/img/flutter.png', 'enable': false},
  {'path': 'assets/img/postgre.png', 'enable': false},
  {'path': 'assets/img/figma.png', 'enable': false},
  {'path': 'assets/img/ps.png', 'enable': false},
  {'path': 'assets/img/git.png', 'enable': false},
  {'path': 'assets/img/svn.png', 'enable': false}
];

class TechGridViewWidget extends StatefulWidget {
  final int selectedProject;
  const TechGridViewWidget({
    super.key,
    required this.selectedProject,
  });

  @override
  State<TechGridViewWidget> createState() => _TechGridViewWidgetState();
}

bool enabledItem(int projectNum, int index) {
  bool ret = false;
  switch (projectNum) {
    case 1: // PAVN2.0
      if (index == 0 || index == 1 || index == 2 || index == 19) {
        ret = true;
      }
      break;
    case 2: // PAVN5.0
      if (index == 0 || index == 1 || index == 2 || index == 19) {
        ret = true;
      }
      break;
    case 3:
      if (index == 2 || index == 9 || index == 18) {
        ret = true;
      }
      break;
    case 4:
      if (index == 4 ||
          index == 5 ||
          index == 6 ||
          index == 8 ||
          index == 10 ||
          index == 17 ||
          index == 18) {
        ret = true;
      }
      break;
    case 5:
      if (index == 3 ||
          index == 5 ||
          index == 6 ||
          index == 7 ||
          index == 11 ||
          index == 12 ||
          index == 16 ||
          index == 17 ||
          index == 18) {
        ret = true;
      }
      break;
    case 6:
      if (index == 6 ||
          index == 9 ||
          index == 12 ||
          index == 13 ||
          index == 14 ||
          index == 15 ||
          index == 16 ||
          index == 17 ||
          index == 18) {
        ret = true;
      }
      break;
    case 0:
    default:
      ret = false;
      break;
  }
  return ret;
}

List<Map<String, dynamic>> sortImgPath(int projectNum) {
  List<Map<String, dynamic>> sortedImgPath = [];

  for (int imgIndex = 0; imgIndex < imgPath.length; imgIndex++) {
    if (enabledItem(projectNum, imgIndex)) {
      imgPath[imgIndex]['enable'] = true;
      sortedImgPath.add(imgPath[imgIndex]);
    }
  }

  for (int imgIndex = 0; imgIndex < imgPath.length; imgIndex++) {
    if (!enabledItem(projectNum, imgIndex)) {
      imgPath[imgIndex]['enable'] = false;
      sortedImgPath.add(imgPath[imgIndex]);
    }
  }

  return sortedImgPath;
}

class _TechGridViewWidgetState extends State<TechGridViewWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> techImageList =
        sortImgPath(widget.selectedProject);

    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemCount: 20,
        itemBuilder: (context, idx) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: techImageList[idx]['enable'] ? 1 : 0.2,
                    alignment: Alignment.center,
                    image: AssetImage(techImageList[idx]['path']),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
