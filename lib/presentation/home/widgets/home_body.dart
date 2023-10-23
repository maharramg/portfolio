import 'package:flutter/material.dart';
import 'package:portfolio/app_constants.dart';
import 'package:portfolio/project_item.dart';
import 'package:portfolio/utilities/extensions.dart';
import 'package:portfolio/utilities/project_model.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingAll24.copyWith(top: 0.0),
      color: whiteColor,
      child: LayoutBuilder(
        builder: ((context, constraints) {
          return Wrap(
            spacing: 16.0,
            runSpacing: 16.0,
            children: apps.map((e) {
              final availableWidth = constraints.maxWidth;

              final rowItemCount = context.isDesktop
                  ? 3
                  : context.isTablet
                      ? 2
                      : 1;

              final itemWidth = (availableWidth - ((rowItemCount - 1) * 16.0)) / rowItemCount;

              return SizedBox(
                width: itemWidth,
                child: ProjectItem(project: e),
              );
            }).toList(),
          );
        }),
      ),
    );
  }
}
