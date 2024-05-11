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
      width: MediaQuery.of(context).size.width,
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
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        job.companyName,
                        style: size24weight700.copyWith(color: blackColor),
                      ),
                    ),
                    Text(
                      job.location,
                      style: size12weight700.copyWith(color: blackColor),
                    ),
                  ],
                ),
                const SizedBox(height: 6.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      job.dates,
                      style: size13weight400.copyWith(color: blackColor),
                    ),
                    const SizedBox(height: 24.0),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        job.description,
                        textAlign: TextAlign.justify,
                        style: size20weight400.copyWith(color: blackColor),
                      ),
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
                          ? MediaQuery.of(context).size.width * 0.2
                          : context.isTablet
                              ? MediaQuery.of(context).size.width * 0.3
                              : MediaQuery.of(context).size.width * 0.3,
                      child: Text(
                        job.companyName,
                        style: context.isDesktop
                            ? size32weight700.copyWith(color: blackColor)
                            : context.isTablet
                                ? size24weight700.copyWith(color: blackColor)
                                : size20weight700.copyWith(color: blackColor),
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      job.dates,
                      style: context.isDesktop
                          ? size20weight400.copyWith(color: blackColor)
                          : context.isTablet
                              ? size13weight400.copyWith(color: blackColor)
                              : size13weight400.copyWith(color: blackColor),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      job.location,
                      style: context.isDesktop
                          ? size18weight700.copyWith(color: blackColor)
                          : context.isTablet
                              ? size12weight700.copyWith(color: blackColor)
                              : size12weight700.copyWith(color: blackColor),
                    ),
                    const SizedBox(height: 24.0),
                    SizedBox(
                      width: context.isDesktop
                          ? MediaQuery.of(context).size.width * 0.48
                          : context.isTablet
                              ? MediaQuery.of(context).size.width * 0.4
                              : MediaQuery.of(context).size.width * 0.4,
                      child: Text(
                        job.description,
                        style: size20weight400.copyWith(color: blackColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
