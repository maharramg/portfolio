import 'package:flutter/material.dart';
import 'package:portfolio/presentation/common/footer.dart';
import 'package:portfolio/presentation/common/header.dart';
import 'package:portfolio/presentation/home/widgets/all_projects_view.dart';
import 'package:portfolio/utilities/services.dart';

class AllProjectsScreen extends StatefulWidget {
  const AllProjectsScreen({super.key});

  @override
  State<AllProjectsScreen> createState() => _AllProjectsScreenState();
}

class _AllProjectsScreenState extends State<AllProjectsScreen> {
  GlobalKey footerKey = GlobalKey();

  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PrimaryScrollController(
        controller: _scrollController,
        child: Column(
          children: [
            Header(scrollFunction: () => Scroll.scrollToSection(footerKey)),
            Expanded(
              child: CustomScrollView(
                controller: _scrollController,
                slivers: [
                  const AllProjectsView(),
                  SliverToBoxAdapter(
                    child: Footer(
                      key: footerKey,
                      scrollFunction: () => Scroll.scrollToSection(footerKey),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
