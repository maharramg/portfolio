import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/presentation/common/contact_view.dart';
import 'package:portfolio/presentation/widgets/social_icon.dart';
import 'package:portfolio/presentation/widgets/hover_underline_text.dart';
import 'package:portfolio/presentation/widgets/logo.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/extensions.dart';
import 'package:portfolio/utilities/routes.dart';
import 'package:portfolio/utilities/services.dart';
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
      width: MediaQuery.sizeOf(context).width,
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
                          const Logo(height: 60.0),
                          Row(
                            children: [
                              HoverUnderlineText(
                                text: Strings.tabWork,
                                textStyle: size18weight500,
                                isTabSelected: currentRoute == Routes.homeScreen,
                                onPressed: () => Nav.goTo(context, Routes.homeScreen),
                              ),
                              const SizedBox(width: 24.0),
                              HoverUnderlineText(
                                text: Strings.tabAbout,
                                textStyle: size18weight500,
                                isTabSelected: currentRoute == Routes.aboutScreen,
                                onPressed: () => Nav.goTo(context, Routes.aboutScreen),
                              ),
                              const SizedBox(width: 24.0),
                              HoverUnderlineText(
                                text: Strings.tabContact,
                                textStyle: size18weight500,
                                isTabSelected: false,
                                onPressed: () => widget.scrollFunction!(),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      const Divider(color: Colors.white24),
                      const SizedBox(height: 30.0),
                      _buildSocialField(),
                      const SizedBox(height: 30.0),
                      Text(
                        Strings.copyright,
                        textAlign: TextAlign.center,
                        style: size14weight400,
                      ),
                      const SizedBox(height: 30.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            Strings.builtWith,
                            textAlign: TextAlign.center,
                            style: size14weight400,
                          ),
                          const SizedBox(width: 5.0),
                          const FlutterLogo(
                            size: 70.0,
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
                              const Logo(height: 60.0),
                              Row(
                                children: [
                                  HoverUnderlineText(
                                    text: Strings.tabWork,
                                    textStyle: size18weight500,
                                    isTabSelected: currentRoute == Routes.homeScreen,
                                    onPressed: () => Nav.goTo(context, Routes.homeScreen),
                                  ),
                                  const SizedBox(width: 24.0),
                                  HoverUnderlineText(
                                    text: Strings.tabAbout,
                                    textStyle: size18weight500,
                                    isTabSelected: currentRoute == Routes.aboutScreen,
                                    onPressed: () => Nav.goTo(context, Routes.aboutScreen),
                                  ),
                                  const SizedBox(width: 24.0),
                                  HoverUnderlineText(
                                    text: Strings.tabContact,
                                    textStyle: size18weight500,
                                    isTabSelected: false,
                                    onPressed: () => widget.scrollFunction!(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 30.0),
                          const Divider(color: Colors.white24),
                          const SizedBox(height: 30.0),
                          _buildSocialField(),
                          const SizedBox(height: 30.0),
                          Text(
                            Strings.copyright,
                            textAlign: TextAlign.center,
                            style: size14weight400,
                          ),
                          const SizedBox(height: 30.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Strings.builtWith,
                                textAlign: TextAlign.center,
                                style: size14weight400,
                              ),
                              const SizedBox(width: 5.0),
                              const FlutterLogo(
                                size: 70.0,
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
                              const Logo(height: 44.0),
                              const SizedBox(height: 30.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  HoverUnderlineText(
                                    text: Strings.tabWork,
                                    textStyle: size16weight500,
                                    isTabSelected: currentRoute == Routes.homeScreen,
                                    onPressed: () => Nav.goTo(context, Routes.homeScreen),
                                  ),
                                  const SizedBox(width: 24.0),
                                  HoverUnderlineText(
                                    text: Strings.tabAbout,
                                    textStyle: size16weight500,
                                    isTabSelected: currentRoute == Routes.aboutScreen,
                                    onPressed: () => Nav.goTo(context, Routes.aboutScreen),
                                  ),
                                  const SizedBox(width: 24.0),
                                  HoverUnderlineText(
                                    text: Strings.tabContact,
                                    textStyle: size16weight500,
                                    isTabSelected: false,
                                    onPressed: () => widget.scrollFunction!(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 30.0),
                          const Divider(color: Colors.white24),
                          const SizedBox(height: 30.0),
                          _buildSocialField(),
                          const SizedBox(height: 30.0),
                          Text(
                            Strings.copyright,
                            textAlign: TextAlign.center,
                            style: size14weight400,
                          ),
                          const SizedBox(height: 30.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Strings.builtWith,
                                textAlign: TextAlign.center,
                                style: size14weight400,
                              ),
                              const SizedBox(width: 5.0),
                              const FlutterLogo(
                                size: 70.0,
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
    return const Wrap(
      alignment: WrapAlignment.center,
      spacing: 8.0,
      children: [
        SocialIcon(icon: FontAwesomeIcons.github, url: githubUrl, label: 'GitHub'),
        SocialIcon(icon: FontAwesomeIcons.linkedin, url: linkedinUrl, label: 'LinkedIn'),
        SocialIcon(icon: FontAwesomeIcons.instagram, url: instagramUrl, label: 'Instagram'),
        SocialIcon(icon: FontAwesomeIcons.facebook, url: facebookUrl, label: 'Facebook'),
        SocialIcon(icon: FontAwesomeIcons.solidEnvelope, url: emailAddress, label: 'Email', isEmail: true),
      ],
    );
  }
}
