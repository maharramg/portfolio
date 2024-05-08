import 'package:flutter/material.dart';
import 'package:portfolio/presentation/common/footer.dart';
import 'package:portfolio/presentation/common/header.dart';
import 'package:portfolio/presentation/home/widgets/all_projects_view.dart';
import 'package:portfolio/utilities/services.dart';

class AllProjectsScreen extends StatelessWidget {
  const AllProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey footerKey = GlobalKey();

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Header(scrollFunction: () => Scroll.scrollToSection(footerKey)),
            const AllProjectsView(),
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
