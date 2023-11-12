import 'package:flutter/material.dart';
import 'package:portfolio/presentation/tablet/tablet_header.dart';
import 'package:portfolio/presentation/tablet/tablet_project_item.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/project_model.dart';

class TabletHomeScreen extends StatelessWidget {
  const TabletHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const TabletHeader(),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              primary: false,
              shrinkWrap: true,
              itemCount: apps.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(12.0).copyWith(top: 0.0),
                  child: TabletProjectItem(project: apps[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
