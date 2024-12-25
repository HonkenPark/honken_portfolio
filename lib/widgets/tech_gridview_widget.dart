import 'package:flutter/widgets.dart';

List<Map<String, dynamic>> imgPath = [
  {'path': 'assets/images/qt.png', 'enable': false},
  {'path': 'assets/images/c.png', 'enable': false},
  {'path': 'assets/images/cpp.png', 'enable': false},
  {'path': 'assets/images/python.png', 'enable': false},
  {'path': 'assets/images/html.png', 'enable': false},
  {'path': 'assets/images/css.png', 'enable': false},
  {'path': 'assets/images/javascript.png', 'enable': false},
  {'path': 'assets/images/react.png', 'enable': false},
  {'path': 'assets/images/jquery.png', 'enable': false},
  {'path': 'assets/images/nodejs.png', 'enable': false},
  {'path': 'assets/images/bootstrap.png', 'enable': false},
  {'path': 'assets/images/antd.png', 'enable': false},
  {'path': 'assets/images/nginx.png', 'enable': false},
  {'path': 'assets/images/dart.png', 'enable': false},
  {'path': 'assets/images/flutter.png', 'enable': false},
  {'path': 'assets/images/postgre.png', 'enable': false},
  {'path': 'assets/images/figma.png', 'enable': false},
  {'path': 'assets/images/ps.png', 'enable': false},
  {'path': 'assets/images/git.png', 'enable': false},
  {'path': 'assets/images/svn.png', 'enable': false}
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
      if (index == 4 || index == 5 || index == 6 || index == 8 || index == 10 || index == 17 || index == 18) {
        ret = true;
      }
      break;
    case 5:
      if (index == 3 || index == 5 || index == 6 || index == 7 || index == 11 || index == 12 || index == 16 || index == 17 || index == 18) {
        ret = true;
      }
      break;
    case 6:
      if (index == 6 || index == 9 || index == 12 || index == 13 || index == 14 || index == 15 || index == 16 || index == 17 || index == 18) {
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
    List<Map<String, dynamic>> techImageList = sortImgPath(widget.selectedProject);

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
