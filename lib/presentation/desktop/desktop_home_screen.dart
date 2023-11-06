import 'package:flutter/material.dart';
import 'package:portfolio/presentation/desktop/desktop_project_item.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/project_model.dart';

class DesktopHomeScreen extends StatelessWidget {
  const DesktopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              primary: false,
              shrinkWrap: true,
              itemCount: apps.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: DesktopProjectItem(project: apps[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
