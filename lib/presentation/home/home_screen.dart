import 'package:flutter/material.dart';
import 'package:portfolio/presentation/common/footer.dart';
import 'package:portfolio/presentation/common/header.dart';
import 'package:portfolio/presentation/home/widgets/landing_view.dart';
import 'package:portfolio/presentation/home/widgets/projects_view.dart';
import 'package:portfolio/presentation/widgets/scroll_up_button.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey footerKey = GlobalKey();
  GlobalKey projectsKey = GlobalKey();

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ScrollUpButton(controller: _scrollController),
      body: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFF010623),
              Color(0xFF001446),
              Color(0xFF000E34),
            ],
          ),
          border: Border.all(color: primaryColor, width: 0),
        ),
        child: SingleChildScrollView(
          controller: _scrollController,
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
      ),
    );
  }
}
