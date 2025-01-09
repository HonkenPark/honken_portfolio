import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:honken_portfolio/enums.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ProjectDetailScreen extends StatelessWidget {
  final ClientType client;

  const ProjectDetailScreen({
    super.key,
    required this.client,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;

    List<String> getSkillByProject(ClientType project) {
      List<String> ret = [];
      switch (project) {
        case ClientType.samsung:
          ret.add('assets/images/skills/flutter.png');
          ret.add('assets/images/skills/nginx.png');
          ret.add('assets/images/skills/git.png');
          ret.add('assets/images/skills/figma.png');
          break;
        case ClientType.saig:
          ret.add('assets/images/skills/flutter.png');
          ret.add('assets/images/skills/nginx.png');
          ret.add('assets/images/skills/git.png');
          ret.add('assets/images/skills/figma.png');
          break;
        case ClientType.mz:
          ret.add('assets/images/skills/flutter.png');
          ret.add('assets/images/skills/javascript.png');
          ret.add('assets/images/skills/nodejs.png');
          ret.add('assets/images/skills/nginx.png');
          ret.add('assets/images/skills/postgre.png');
          ret.add('assets/images/skills/git.png');
          ret.add('assets/images/skills/figma.png');
          ret.add('assets/images/skills/ps.png');
          break;
        case ClientType.sd:
          ret.add('assets/images/skills/react.png');
          ret.add('assets/images/skills/redux.png');
          ret.add('assets/images/skills/electron.png');
          ret.add('assets/images/skills/javascript.png');
          ret.add('assets/images/skills/nginx.png');
          ret.add('assets/images/skills/oracle.png');
          ret.add('assets/images/skills/gitlab.png');
          ret.add('assets/images/skills/figma.png');
          break;
        case ClientType.jeju:
          ret.add('assets/images/skills/javascript.png');
          ret.add('assets/images/skills/html.png');
          ret.add('assets/images/skills/css.png');
          ret.add('assets/images/skills/jquery.png');
          ret.add('assets/images/skills/tomcat.png');
          ret.add('assets/images/skills/gitlab.png');
          break;
        case ClientType.vw:
          ret.add('assets/images/skills/cpp.png');
          ret.add('assets/images/skills/git.png');
          ret.add('assets/images/skills/gerrit.png');
          ret.add('assets/images/skills/shell.png');
          ret.add('assets/images/skills/ubuntu.png');
          ret.add('assets/images/skills/cerence.png');
          break;
        case ClientType.hmcLge:
          ret.add('assets/images/skills/qt.png');
          ret.add('assets/images/skills/cpp.png');
          ret.add('assets/images/skills/c.png');
          ret.add('assets/images/skills/shell.png');
          ret.add('assets/images/skills/svn.png');
          ret.add('assets/images/skills/ubuntu.png');
          break;
      }
      return ret;
    }

    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'project-${client.name}',
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset(
                      client.path,
                      width: 200,
                      height: 200,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 48.0,
                ),
                child: Text(
                  client.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                ),
                child: Text(
                  client.period,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: isMobile ? MediaQuery.sizeOf(context).width * 0.8 : MediaQuery.sizeOf(context).width / 3,
                child: Text(
                  client.description,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Text(
                'project_used_skills'.tr,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 48.0),
                child: Align(
                  alignment: Alignment.center,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: getSkillByProject(client).length * 120.0,
                    ),
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 100,
                        crossAxisSpacing: 16.0,
                        mainAxisSpacing: 16.0,
                        childAspectRatio: 1.0,
                      ),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: getSkillByProject(client).length,
                      itemBuilder: (context, index) {
                        final skill = getSkillByProject(client)[index];
                        return Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                            image: DecorationImage(
                              image: AssetImage(skill),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
