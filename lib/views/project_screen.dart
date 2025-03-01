import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:honken_portfolio/enums.dart';
import 'package:honken_portfolio/views/project_detail_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveBreakpoints.of(context).largerThan('SMALL_DESKTOP');
    final is4k = ResponsiveBreakpoints.of(context).largerOrEqualTo('4K');

    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: SafeArea(
        child: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final maxWidth = constraints.maxWidth;
              final maxHeight = constraints.maxHeight;

              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: maxWidth * 0.05,
                  vertical: maxHeight * 0.05,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'project_title'.tr,
                      style: TextStyle(
                        fontSize: isDesktop ? 48.0 : 28.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ShaderMask(
                      shaderCallback: (bounds) => const LinearGradient(
                        colors: [
                          Color(0xFF6EEED0),
                          Color(0xFF9B62F6),
                          Color(0xFF6164FF),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(bounds),
                      child: Text(
                        'project_client_title'.tr,
                        style: TextStyle(
                          fontSize: isDesktop ? 18.0 : 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: isDesktop ? 60 : 40),
                    Expanded(
                      child: GridView.builder(
                        padding: const EdgeInsets.all(16.0),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: is4k
                              ? 3
                              : isDesktop
                                  ? 2
                                  : 1,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          childAspectRatio: is4k
                              ? 3
                              : isDesktop
                                  ? 4
                                  : 5,
                        ),
                        itemCount: ClientType.values.length,
                        itemBuilder: (context, index) {
                          final client = ClientType.values[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProjectDetailScreen(
                                    client: client,
                                  ),
                                ),
                              );
                            },
                            child: Hero(
                              tag: 'project-${client.name}',
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisAlignment: isDesktop ? MainAxisAlignment.start : MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        client.path,
                                        fit: BoxFit.cover,
                                        width: isDesktop ? maxWidth * 0.15 : maxWidth * 0.2,
                                      ),
                                      if (isDesktop) ...[
                                        const SizedBox(width: 42),
                                        SizedBox(
                                          width: is4k ? MediaQuery.sizeOf(context).width / 10 : MediaQuery.sizeOf(context).width / 5,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                client.name,
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                client.period,
                                                style: const TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                              Text(
                                                client.role,
                                                style: const TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 13,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
