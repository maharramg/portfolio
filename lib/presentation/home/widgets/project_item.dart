import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/outlined_button_custom.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/extensions.dart';
import 'package:portfolio/utilities/project_model.dart';
import 'package:portfolio/utilities/services.dart';
import 'package:portfolio/utilities/strings.dart';

class ProjectItem extends StatefulWidget {
  final ProjectModel project;

  const ProjectItem({super.key, required this.project});

  @override
  State<ProjectItem> createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.isDesktop
          ? const EdgeInsets.symmetric(horizontal: 100.0, vertical: 30.0)
          : context.isTablet
              ? const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0)
              : const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: context.isDesktop
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 60.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1.5,
                                  ),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      widget.project.logo,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12.0),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: Text(
                                  widget.project.name,
                                  style: const TextStyle(
                                    fontSize: 45.0,
                                    fontWeight: FontWeight.w800,
                                    color: primaryColor,
                                    fontFamily: neuePowerFont,
                                    height: 1.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30.0),
                          Text(
                            '${Strings.category}: ${widget.project.category}',
                            style: size16weight600.copyWith(color: primaryColor),
                          ),
                          const SizedBox(height: 30.0),
                          SizedBox(
                            width: 350.0,
                            child: Text(
                              widget.project.description,
                              style: size14weight500.copyWith(color: blackColor),
                            ),
                          ),
                        ],
                      ),
                      _buildButtons(),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Image.asset(widget.project.images.first),
                )
              ],
            )
          : context.isTablet
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 60.0,
                                  width: 60.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1.5,
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                        widget.project.logo,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 12.0),
                                Text(
                                  widget.project.name,
                                  style: const TextStyle(
                                    fontSize: 45.0,
                                    fontWeight: FontWeight.w800,
                                    color: primaryColor,
                                    fontFamily: neuePowerFont,
                                    height: 1.0,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 30.0),
                            Text(
                              '${Strings.category}: ${widget.project.category}',
                              style: size16weight600.copyWith(color: primaryColor),
                            ),
                            const SizedBox(height: 30.0),
                            SizedBox(
                              width: 350.0,
                              child: Text(
                                widget.project.description,
                                textAlign: TextAlign.center,
                                style: size14weight400.copyWith(color: blackColor),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30.0),
                        _buildButtons(),
                      ],
                    ),
                    const SizedBox(height: 30.0),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: Image.asset(widget.project.images.first),
                    )
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.5,
                                ),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    widget.project.logo,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 12.0),
                            Text(
                              widget.project.name,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 35.0,
                                fontWeight: FontWeight.w800,
                                color: primaryColor,
                                fontFamily: neuePowerFont,
                                height: 1.0,
                              ),
                            ),
                            const SizedBox(height: 24.0),
                            Text(
                              '${Strings.category}: ${widget.project.category}',
                              textAlign: TextAlign.center,
                              style: size16weight600.copyWith(color: primaryColor),
                            ),
                            const SizedBox(height: 24.0),
                            Text(
                              widget.project.description,
                              textAlign: TextAlign.center,
                              style: size12weight400.copyWith(color: blackColor),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24.0),
                        _buildButtons(),
                      ],
                    ),
                    const SizedBox(height: 24.0),
                    Image.asset(widget.project.images.first),
                  ],
                ),
    );
  }

  Widget _buildButtons() {
    return context.isDesktop
        ? Row(
            children: [
              if (widget.project.appStoreUrl!.isNotEmpty) ...[
                OutlinedButtonCustom(
                  title: Strings.appStore,
                  onPressed: () => URLLauncher.launchURL(widget.project.appStoreUrl!),
                ),
                const SizedBox(width: 12.0),
              ],
              if (widget.project.playStoreUrl!.isNotEmpty) ...[
                OutlinedButtonCustom(
                  title: Strings.googlePlay,
                  onPressed: () => URLLauncher.launchURL(widget.project.playStoreUrl!),
                ),
              ],
            ],
          )
        : context.isTablet
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (widget.project.appStoreUrl!.isNotEmpty) ...[
                    OutlinedButtonCustom(
                      title: Strings.appStore,
                      onPressed: () => URLLauncher.launchURL(widget.project.appStoreUrl!),
                    ),
                    const SizedBox(width: 12.0),
                  ],
                  if (widget.project.playStoreUrl!.isNotEmpty) ...[
                    OutlinedButtonCustom(
                      title: Strings.googlePlay,
                      onPressed: () => URLLauncher.launchURL(widget.project.playStoreUrl!),
                    ),
                  ],
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (widget.project.appStoreUrl!.isNotEmpty) ...[
                    OutlinedButtonCustom(
                      title: Strings.appStore,
                      buttonSize: const Size(180.0, 40.0),
                      onPressed: () => URLLauncher.launchURL(widget.project.appStoreUrl!),
                    ),
                    const SizedBox(height: 12.0),
                  ],
                  if (widget.project.playStoreUrl!.isNotEmpty) ...[
                    OutlinedButtonCustom(
                      title: Strings.googlePlay,
                      buttonSize: const Size(180.0, 40.0),
                      onPressed: () => URLLauncher.launchURL(widget.project.playStoreUrl!),
                    ),
                  ],
                ],
              );
  }
}
