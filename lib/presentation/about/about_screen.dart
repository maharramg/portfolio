import 'package:flutter/material.dart';
import 'package:portfolio/presentation/about/widgets/about_view.dart';
import 'package:portfolio/presentation/common/footer.dart';
import 'package:portfolio/presentation/common/header.dart';
import 'package:portfolio/presentation/about/widgets/jobs_view.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/services.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey footerKey = GlobalKey();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(
              bgColor: whiteColor,
              scrollFunction: () => Scroll.scrollToSection(footerKey),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Divider(height: 0.0),
            ),
            const AboutView(),
            const JobsView(),
            Footer(
              key: footerKey,
              scrollFunction: () => Scroll.scrollToSection(footerKey),
            ),
          ],
        ),
      ),
    );
  }
}
