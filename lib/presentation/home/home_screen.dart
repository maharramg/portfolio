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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Header(scrollFunction: () => Scroll.scrollToSection(footerKey)),
            const LandingView(),
            const ProjectsView(),
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
