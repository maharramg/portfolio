import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'app_constants.dart';

class ProjectItem extends StatelessWidget {
  final String projectImg;
  final String projectName;
  final String projectDesc;

  const ProjectItem({Key? key, required this.projectImg, required this.projectName, required this.projectDesc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(projectImg, height: 400),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  projectName,
                  style: size32weight700.copyWith(color: Colors.white),
                ),
                Text(
                  projectDesc,
                  style: size20weight700.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
