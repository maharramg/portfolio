// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/presentation/common/contact_view.dart';
import 'package:portfolio/presentation/widgets/social_icon.dart';
import 'package:portfolio/presentation/widgets/hover_underline_text.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/extensions.dart';
import 'package:portfolio/utilities/routes.dart';
import 'package:portfolio/utilities/strings.dart';

class Footer extends StatefulWidget {
  final Function? scrollFunction;

  const Footer({
    super.key,
    this.scrollFunction,
  });

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    final String? currentRoute = ModalRoute.of(context)?.settings.name;

    return Container(
      color: whiteColor,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const ContactView(),
          Container(
            color: tertiaryColor,
            padding: context.isDesktop
                ? const EdgeInsets.symmetric(vertical: 80.0, horizontal: 130.0).copyWith(bottom: 0.0)
                : context.isTablet
                    ? const EdgeInsets.symmetric(vertical: 50.0, horizontal: 100.0).copyWith(bottom: 0.0)
                    : const EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0).copyWith(bottom: 0.0),
            child: context.isDesktop
                ? Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            Strings.mainIconLight,
                            width: 200.0,
                          ),
                          Row(
                            children: [
                              HoverUnderlineText(
                                text: Strings.tabWork,
                                textStyle: size24weight500,
                                isTabSelected: currentRoute == Routes.homeScreen,
                                onPressed: () {
                                  if (currentRoute == Routes.homeScreen) {
                                    html.window.location.reload();
                                  } else {
                                    Navigator.pushNamed(context, Routes.homeScreen);
                                  }
                                },
                              ),
                              const SizedBox(width: 24.0),
                              HoverUnderlineText(
                                text: Strings.tabAbout,
                                textStyle: size24weight500,
                                isTabSelected: currentRoute == Routes.aboutScreen,
                                onPressed: () {
                                  if (currentRoute == Routes.aboutScreen) {
                                    html.window.location.reload();
                                  } else {
                                    Navigator.pushNamed(context, Routes.aboutScreen);
                                  }
                                },
                              ),
                              const SizedBox(width: 24.0),
                              HoverUnderlineText(
                                text: Strings.tabContact,
                                textStyle: size24weight500,
                                isTabSelected: false,
                                onPressed: () => widget.scrollFunction!(),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      const Divider(),
                      const SizedBox(height: 30.0),
                      _buildSocialField(),
                      const SizedBox(height: 30.0),
                      Text(
                        Strings.copyright,
                        textAlign: TextAlign.center,
                        style: size20weight400,
                      ),
                      const SizedBox(height: 30.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            Strings.builtWith,
                            textAlign: TextAlign.center,
                            style: size18weight400,
                          ),
                          const SizedBox(width: 5.0),
                          const FlutterLogo(
                            size: 100.0,
                            textColor: whiteColor,
                            style: FlutterLogoStyle.horizontal,
                          ),
                        ],
                      ),
                    ],
                  )
                : context.isTablet
                    ? Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                Strings.mainIconLight,
                                width: 200.0,
                              ),
                              Row(
                                children: [
                                  HoverUnderlineText(
                                    text: Strings.tabWork,
                                    textStyle: size24weight500,
                                    isTabSelected: currentRoute == Routes.homeScreen,
                                    onPressed: () {
                                      if (currentRoute == Routes.homeScreen) {
                                        html.window.location.reload();
                                      } else {
                                        Navigator.pushNamed(context, Routes.homeScreen);
                                      }
                                    },
                                  ),
                                  const SizedBox(width: 24.0),
                                  HoverUnderlineText(
                                    text: Strings.tabAbout,
                                    textStyle: size24weight500,
                                    isTabSelected: currentRoute == Routes.aboutScreen,
                                    onPressed: () {
                                      if (currentRoute == Routes.aboutScreen) {
                                        html.window.location.reload();
                                      } else {
                                        Navigator.pushNamed(context, Routes.aboutScreen);
                                      }
                                    },
                                  ),
                                  const SizedBox(width: 24.0),
                                  HoverUnderlineText(
                                    text: Strings.tabContact,
                                    textStyle: size24weight500,
                                    isTabSelected: false,
                                    onPressed: () => widget.scrollFunction!(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 30.0),
                          const Divider(),
                          const SizedBox(height: 30.0),
                          _buildSocialField(),
                          const SizedBox(height: 30.0),
                          Text(
                            Strings.copyright,
                            textAlign: TextAlign.center,
                            style: size20weight400,
                          ),
                          const SizedBox(height: 30.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Strings.builtWith,
                                textAlign: TextAlign.center,
                                style: size18weight400,
                              ),
                              const SizedBox(width: 5.0),
                              const FlutterLogo(
                                size: 100.0,
                                textColor: whiteColor,
                                style: FlutterLogoStyle.horizontal,
                              ),
                            ],
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                Strings.mainIconLight,
                                width: MediaQuery.of(context).size.width * 0.4,
                              ),
                              const SizedBox(height: 30.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  HoverUnderlineText(
                                    text: Strings.tabWork,
                                    textStyle: size20weight500,
                                    isTabSelected: currentRoute == Routes.homeScreen,
                                    onPressed: () {
                                      if (currentRoute == Routes.homeScreen) {
                                        html.window.location.reload();
                                      } else {
                                        Navigator.pushNamed(context, Routes.homeScreen);
                                      }
                                    },
                                  ),
                                  const SizedBox(width: 24.0),
                                  HoverUnderlineText(
                                    text: Strings.tabAbout,
                                    textStyle: size20weight500,
                                    isTabSelected: currentRoute == Routes.aboutScreen,
                                    onPressed: () {
                                      if (currentRoute == Routes.aboutScreen) {
                                        html.window.location.reload();
                                      } else {
                                        Navigator.pushNamed(context, Routes.aboutScreen);
                                      }
                                    },
                                  ),
                                  const SizedBox(width: 24.0),
                                  HoverUnderlineText(
                                    text: Strings.tabContact,
                                    textStyle: size20weight500,
                                    isTabSelected: false,
                                    onPressed: () => widget.scrollFunction!(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 30.0),
                          const Divider(),
                          const SizedBox(height: 30.0),
                          _buildSocialField(),
                          const SizedBox(height: 30.0),
                          Text(
                            Strings.copyright,
                            textAlign: TextAlign.center,
                            style: size18weight400,
                          ),
                          const SizedBox(height: 30.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Strings.builtWith,
                                textAlign: TextAlign.center,
                                style: size15weight400,
                              ),
                              const SizedBox(width: 5.0),
                              const FlutterLogo(
                                size: 90.0,
                                textColor: whiteColor,
                                style: FlutterLogoStyle.horizontal,
                              ),
                            ],
                          ),
                        ],
                      ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialField() {
    return SizedBox(
      width: context.isDesktop
          ? MediaQuery.of(context).size.width * 0.2
          : context.isTablet
              ? MediaQuery.of(context).size.width * 0.2
              : MediaQuery.of(context).size.width * 0.5,
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SocialIcon(icon: FontAwesomeIcons.github, url: githubUrl),
          SocialIcon(icon: FontAwesomeIcons.linkedin, url: linkedinUrl),
          SocialIcon(icon: FontAwesomeIcons.instagram, url: instagramUrl),
          SocialIcon(icon: FontAwesomeIcons.facebook, url: facebookUrl),
          SocialIcon(icon: FontAwesomeIcons.solidEnvelope, url: emailAddress, isEmail: true),
        ],
      ),
    );
  }
}
