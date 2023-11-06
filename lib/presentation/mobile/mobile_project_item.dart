import 'package:flutter/material.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileProjectItem extends StatefulWidget {
  final ProjectModel project;

  const MobileProjectItem({super.key, required this.project});

  @override
  State<MobileProjectItem> createState() => _MobileProjectItemState();
}

class _MobileProjectItemState extends State<MobileProjectItem> {
  bool onHover1 = false;
  bool onHover2 = false;

  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  void _scrollToLast() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }

  void _scrollToFirst() {
    _scrollController.animateTo(
      _scrollController.position.minScrollExtent,
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 12 / 5,
      child: Container(
        padding: const EdgeInsets.all(24.0),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200.0,
                  child: Text(
                    widget.project.name,
                    style: size24weight700,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 12.0),
                Container(
                  height: 200.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        blurRadius: 3.0,
                        spreadRadius: 3.0,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset(
                      widget.project.logo,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            Expanded(
              child: SizedBox(
                height: 500.0,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.project.images.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 500.0,
                      width: 260.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24.0),
                        child: Image.asset(
                          widget.project.images.elementAt(index),
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(width: 12.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
