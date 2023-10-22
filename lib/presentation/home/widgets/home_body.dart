import 'package:flutter/material.dart';
import 'package:portfolio/project_item.dart';
import 'package:portfolio/utilities/extensions.dart';
import 'package:portfolio/utilities/project_model.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
        color: Colors.white,
        // decoration: const BoxDecoration(
        //   color: Colors.white,
        //   image: DecorationImage(
        //     image: AssetImage('assets/images/comic-bg.jpg'),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: LayoutBuilder(
          builder: ((context, constraints) {
            return Wrap(
              spacing: 16.0,
              runSpacing: 16.0,
              children: apps.map((e) {
                final availableWidth = constraints.maxWidth;

                final rowItemCount = context.isDesktop
                    ? 4
                    : context.isTablet
                        ? 3
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
      ),
    );
  }
}
