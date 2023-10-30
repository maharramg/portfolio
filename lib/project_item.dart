import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/app_constants.dart';
import 'package:portfolio/utilities/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectItem extends StatefulWidget {
  final ProjectModel project;

  const ProjectItem({super.key, required this.project});

  @override
  State<ProjectItem> createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  bool onHover1 = false;
  bool onHover2 = false;

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 200.0,
          width: 200.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1), //New
                blurRadius: 3.0,
                spreadRadius: 3.0,
              )
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset(
              widget.project.logo,
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(width: 24.0),
        Expanded(
          child: SizedBox(
            height: 500,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: widget.project.images.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 500,
                  // width: 220,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.asset(
                      widget.project.images.elementAt(index),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 12.0);
              },
            ),
          ),
        ),
      ],
    );
  }
}
