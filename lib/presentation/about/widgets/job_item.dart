import 'package:flutter/material.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/extensions.dart';
import 'package:portfolio/utilities/job_model.dart';

class JobItem extends StatelessWidget {
  final JobModel job;

  const JobItem({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: context.isMobile
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      child: Text(
                        job.companyName,
                        style: size24weight600.copyWith(color: blackColor),
                      ),
                    ),
                    Text(
                      job.location,
                      style: size13weight600.copyWith(color: blackColor),
                    ),
                  ],
                ),
                const SizedBox(height: 6.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      job.dates,
                      style: size14weight400.copyWith(color: blackColor),
                    ),
                    const SizedBox(height: 24.0),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width,
                      child: _buildDescription(size14weight400),
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: context.isDesktop
                          ? MediaQuery.sizeOf(context).width * 0.2
                          : context.isTablet
                              ? MediaQuery.sizeOf(context).width * 0.3
                              : MediaQuery.sizeOf(context).width * 0.3,
                      child: Text(
                        job.companyName,
                        style: context.isDesktop
                            ? size32weight600.copyWith(color: blackColor)
                            : context.isTablet
                                ? size24weight600.copyWith(color: blackColor)
                                : size20weight600.copyWith(color: blackColor),
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      job.dates,
                      style: context.isDesktop
                          ? size16weight400.copyWith(color: blackColor)
                          : context.isTablet
                              ? size14weight400.copyWith(color: blackColor)
                              : size14weight400.copyWith(color: blackColor),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      job.location,
                      style: context.isDesktop
                          ? size16weight600.copyWith(color: blackColor)
                          : context.isTablet
                              ? size13weight600.copyWith(color: blackColor)
                              : size13weight600.copyWith(color: blackColor),
                    ),
                    const SizedBox(height: 24.0),
                    SizedBox(
                      width: context.isDesktop
                          ? MediaQuery.sizeOf(context).width * 0.48
                          : context.isTablet
                              ? MediaQuery.sizeOf(context).width * 0.4
                              : MediaQuery.sizeOf(context).width * 0.4,
                      child: _buildDescription(context.isDesktop ? size16weight400 : size14weight400),
                    ),
                  ],
                ),
              ],
            ),
    );
  }

  Widget _buildDescription(TextStyle textStyle) {
    final style = textStyle.copyWith(color: blackColor, height: 1.6);

    return Column(
      children: [
        for (final line in job.description.split('\n'))
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('•  ', style: style),
                Expanded(child: Text(line.replaceFirst(RegExp(r'^•\s*'), ''), style: style)),
              ],
            ),
          ),
      ],
    );
  }
}
