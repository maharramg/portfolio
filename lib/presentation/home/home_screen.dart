import 'package:flutter/material.dart';
import 'package:portfolio/presentation/common/footer.dart';
import 'package:portfolio/presentation/common/header.dart';
import 'package:portfolio/presentation/home/widgets/landing_view.dart';
import 'package:portfolio/presentation/home/widgets/projects_view.dart';
import 'package:portfolio/utilities/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey footerKey = GlobalKey();
  GlobalKey projectsKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(scrollFunction: () => Scroll.scrollToSection(footerKey)),
            LandingView(scrollFunction: () => Scroll.scrollToSection(projectsKey)),
            ProjectsView(key: projectsKey),
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
