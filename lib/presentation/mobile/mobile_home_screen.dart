import 'package:flutter/material.dart';
import 'package:portfolio/presentation/mobile/mobile_header.dart';
import 'package:portfolio/presentation/mobile/mobile_project_item.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/project_model.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: const MobileHeader(),
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
                  padding: const EdgeInsets.all(12.0).copyWith(top: 0.0),
                  child: MobileProjectItem(project: apps[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
