import 'package:flutter/material.dart';
import 'package:portfolio/app_constants.dart';
import 'package:portfolio/project_item.dart';
import 'package:portfolio/utilities/project_model.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingAll24.copyWith(top: 0.0),
      child: LayoutBuilder(
        builder: ((context, constraints) {
          return Wrap(
            spacing: 24.0,
            runSpacing: 24.0,
            children: apps.map((e) {
              return SizedBox(
                // width: MediaQuery.of(context).size.width,
                child: ProjectItem(project: e),
              );
            }).toList(),
          );
        }),
      ),
    );
  }
}
