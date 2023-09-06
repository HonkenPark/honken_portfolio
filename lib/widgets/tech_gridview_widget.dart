import 'package:flutter/widgets.dart';

class TechGridViewWidget extends StatefulWidget {
  final int selectedProject;
  const TechGridViewWidget({
    super.key,
    required this.selectedProject,
  });

  @override
  State<TechGridViewWidget> createState() => _TechGridViewWidgetState();
}

class _TechGridViewWidgetState extends State<TechGridViewWidget> {
  late int projectNum;
  List<String> imgPath = [
    'assets/img/qt.png',
    'assets/img/c.png',
    'assets/img/cpp.png',
    'assets/img/python.png',
    'assets/img/html.png',
    'assets/img/css.png',
    'assets/img/javascript.png',
    'assets/img/react.png',
    'assets/img/jquery.png',
    'assets/img/nodejs.png',
    'assets/img/bootstrap.png',
    'assets/img/antd.png',
    'assets/img/nginx.png',
    'assets/img/dart.png',
    'assets/img/flutter.png',
    'assets/img/postgre.png',
    'assets/img/figma.png',
    'assets/img/ps.png',
    'assets/img/git.png',
    'assets/img/svn.png'
  ];

  @override
  void initState() {
    projectNum = widget.selectedProject;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool enabledItem(projectNum, idx) {
      bool ret = false;
      switch (projectNum) {
        case 1: // PAVN2.0
          if (idx == 0 || idx == 1 || idx == 2 || idx == 19) {
            ret = true;
          }
          break;
        case 2: // PAVN5.0
          if (idx == 0 || idx == 1 || idx == 2 || idx == 19) {
            ret = true;
          }
          break;
        case 3:
          if (idx == 2 || idx == 9 || idx == 18) {
            ret = true;
          }
          break;
        case 4:
          if (idx == 4 ||
              idx == 5 ||
              idx == 6 ||
              idx == 8 ||
              idx == 10 ||
              idx == 17 ||
              idx == 18) {
            ret = true;
          }
          break;
        case 5:
          if (idx == 3 ||
              idx == 5 ||
              idx == 6 ||
              idx == 7 ||
              idx == 11 ||
              idx == 12 ||
              idx == 16 ||
              idx == 17 ||
              idx == 18) {
            ret = true;
          }
          break;
        case 6:
          if (idx == 6 ||
              idx == 9 ||
              idx == 12 ||
              idx == 13 ||
              idx == 14 ||
              idx == 15 ||
              idx == 16 ||
              idx == 17 ||
              idx == 18) {
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
                    opacity: enabledItem(projectNum, idx) ? 1 : 0.4,
                    alignment: Alignment.center,
                    image: AssetImage(imgPath[idx]),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
