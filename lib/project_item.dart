import 'package:flutter/material.dart';
import 'package:portfolio/app_constants.dart';
import 'package:portfolio/utilities/project_model.dart';

class ProjectItem extends StatelessWidget {
  final ProjectModel project;

  const ProjectItem({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        border: Border.all(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(project.image),
          const SizedBox(height: 16.0),
          Column(
            children: [
              Text(
                project.name,
                style: size32weight700.copyWith(color: textColor, fontSize: 30),
              ),
              Text(
                project.description!,
                style: size20weight700.copyWith(color: textColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
