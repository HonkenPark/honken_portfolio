import 'package:flutter/material.dart';
import 'package:honken_portfolio/enums.dart';

class ProjectDetailScreen extends StatelessWidget {
  final ClientType client;

  const ProjectDetailScreen({
    super.key,
    required this.client,
  });

  @override
  Widget build(BuildContext context) {
    List<String> getSkillByProject(ClientType project) {
      List<String> ret = [];
      switch (project) {
        case ClientType.samsung:
          ret.add('assets/images/skills/flutter.png');
          ret.add('assets/images/skills/git.png');
          break;
        case ClientType.saig:
          break;
        case ClientType.mz:
          break;
        case ClientType.sd:
          break;
        case ClientType.jeju:
          break;
        case ClientType.vw:
          break;
        case ClientType.hmcLge:
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
            Text(
              client.projectName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              client.projectPeriod,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: MediaQuery.sizeOf(context).width / 2,
              child: Text(
                client.projectDescription,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              '[사용 스킬]',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
