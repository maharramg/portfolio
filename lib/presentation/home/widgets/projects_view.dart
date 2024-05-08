import 'package:flutter/material.dart';
import 'package:portfolio/presentation/home/widgets/project_item.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/extensions.dart';
import 'package:portfolio/utilities/project_model.dart';
import 'package:portfolio/utilities/routes.dart';
import 'package:portfolio/utilities/strings.dart';

class ProjectsView extends StatefulWidget {
  const ProjectsView({super.key});

  @override
  State<ProjectsView> createState() => _ProjectsViewState();
}

class _ProjectsViewState extends State<ProjectsView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: scaffoldBgColor,
      child: Column(
        children: [
          context.isDesktop
              ? const SizedBox(height: 75.0)
              : context.isTablet
                  ? const SizedBox(height: 40.0)
                  : const SizedBox(height: 40.0),
          Text(
            Strings.portfolio,
            style: TextStyle(
              fontSize: context.isDesktop
                  ? 40.0
                  : context.isTablet
                      ? 40.0
                      : 30.0,
              fontWeight: FontWeight.w800,
              color: primaryColor,
              fontFamily: neuePowerFont,
              height: 1.2,
            ),
          ),
          Text(
            Strings.mobileApps,
            style: context.isDesktop
                ? size14weight400.copyWith(color: primaryColor)
                : context.isTablet
                    ? size14weight400.copyWith(color: primaryColor)
                    : size12weight400.copyWith(color: primaryColor),
          ),
          context.isDesktop
              ? const SizedBox(height: 75.0)
              : context.isTablet
                  ? const SizedBox(height: 40.0)
                  : const SizedBox(height: 40.0),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            primary: false,
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(24.0).copyWith(top: 0.0, bottom: 30.0),
                child: ProjectItem(project: projects[index]),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: TextButton(
              onPressed: () => Navigator.pushNamed(context, Routes.projectsScreen),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Strings.seeMore,
                    style: size15weight400.copyWith(color: primaryColor.withOpacity(0.5)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: primaryColor.withOpacity(0.5),
                    size: 13.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
