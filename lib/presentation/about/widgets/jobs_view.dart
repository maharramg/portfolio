import 'package:flutter/material.dart';
import 'package:portfolio/presentation/about/widgets/job_item.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/extensions.dart';
import 'package:portfolio/utilities/job_model.dart';
import 'package:portfolio/utilities/strings.dart';

class JobsView extends StatelessWidget {
  const JobsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 75.0),
        Text(
          Strings.workExperience,
          style: TextStyle(
            fontSize: context.isDesktop
                ? 40.0
                : context.isTablet
                    ? 30.0
                    : 30.0,
            fontWeight: FontWeight.w800,
            color: primaryColor,
            fontFamily: neuePowerFont,
            height: 1.2,
          ),
        ),
        context.isDesktop
            ? const SizedBox(height: 125.0)
            : context.isTablet
                ? const SizedBox(height: 75.0)
                : const SizedBox(height: 35.0),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          primary: false,
          shrinkWrap: true,
          itemCount: jobs.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: context.isDesktop
                  ? const EdgeInsets.all(130.0).copyWith(top: 0.0)
                  : context.isTablet
                      ? const EdgeInsets.all(100.0).copyWith(top: 0.0)
                      : const EdgeInsets.all(35.0),
              child: JobItem(job: jobs[index]),
            );
          },
        ),
      ],
    );
  }
}
