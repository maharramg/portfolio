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
        for (final job in jobs)
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.isDesktop
                  ? 130.0
                  : context.isTablet
                      ? 100.0
                      : 35.0,
            ),
            child: Column(
              children: [
                if (job != jobs.first) const Divider(height: 0.0),
                SizedBox(height: context.isMobile ? 35.0 : 60.0),
                JobItem(job: job),
                SizedBox(height: context.isMobile ? 35.0 : 60.0),
              ],
            ),
          ),
      ],
    );
  }
}
