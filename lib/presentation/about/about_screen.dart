import 'package:flutter/material.dart';
import 'package:portfolio/presentation/about/widgets/about_view.dart';
import 'package:portfolio/presentation/common/footer.dart';
import 'package:portfolio/presentation/common/header.dart';
import 'package:portfolio/presentation/about/widgets/jobs_view.dart';
import 'package:portfolio/presentation/widgets/scroll_up_button.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/services.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  GlobalKey footerKey = GlobalKey();

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ScrollUpButton(controller: _scrollController),
      body: SingleChildScrollView(
        controller: _scrollController,
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
