import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/services.dart';
import 'package:portfolio/utilities/strings.dart';

class TabletHeader extends StatefulWidget {
  const TabletHeader({super.key});

  @override
  State<TabletHeader> createState() => _TabletHeaderState();
}

class _TabletHeaderState extends State<TabletHeader> {
  bool _isHoveredGithub = false;
  bool _isHoveredLinkedin = false;
  bool _isHoveredInstagram = false;
  bool _isHoveredFacebook = false;
  bool _isHoveredEmail = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: AspectRatio(
        aspectRatio: 12,
        child: Container(
          padding: const EdgeInsets.only(left: 12.0, right: 24.0),
          decoration: BoxDecoration(
            color: headingBgColor,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () => URLLauncher.launchURL(resumeUrl),
                style: TextButton.styleFrom(
                  elevation: 0.0,
                  foregroundColor: headingBgColor,
                  fixedSize: const Size(150, 40),
                ),
                child: Text(
                  Strings.resume,
                  style: size20weight600.copyWith(
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              Image.asset(Strings.mainIcon),
              _buildSocialField(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (_) {
            setState(() {
              _isHoveredGithub = true;
            });
          },
          onExit: (_) {
            setState(() {
              _isHoveredGithub = false;
            });
          },
          child: GestureDetector(
            onTap: () => URLLauncher.launchURL(githubUrl),
            child: Icon(
              FontAwesomeIcons.github,
              color: _isHoveredGithub ? whiteColor : greyColor,
              size: 18.0,
            ),
          ),
        ),
        const SizedBox(width: 10.0),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (_) {
            setState(() {
              _isHoveredLinkedin = true;
            });
          },
          onExit: (_) {
            setState(() {
              _isHoveredLinkedin = false;
            });
          },
          child: GestureDetector(
            onTap: () => URLLauncher.launchURL(linkedinUrl),
            child: Icon(
              FontAwesomeIcons.linkedin,
              color: _isHoveredLinkedin ? whiteColor : greyColor,
              size: 18.0,
            ),
          ),
        ),
        const SizedBox(width: 10.0),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (_) {
            setState(() {
              _isHoveredInstagram = true;
            });
          },
          onExit: (_) {
            setState(() {
              _isHoveredInstagram = false;
            });
          },
          child: GestureDetector(
            onTap: () => URLLauncher.launchURL(instagramUrl),
            child: Icon(
              FontAwesomeIcons.instagram,
              color: _isHoveredInstagram ? whiteColor : greyColor,
              size: 18.0,
            ),
          ),
        ),
        const SizedBox(width: 10.0),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (_) {
            setState(() {
              _isHoveredFacebook = true;
            });
          },
          onExit: (_) {
            setState(() {
              _isHoveredFacebook = false;
            });
          },
          child: GestureDetector(
            onTap: () => URLLauncher.launchURL(facebookUrl),
            child: Icon(
              FontAwesomeIcons.facebook,
              color: _isHoveredFacebook ? whiteColor : greyColor,
              size: 18.0,
            ),
          ),
        ),
        const SizedBox(width: 10.0),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (_) {
            setState(() {
              _isHoveredEmail = true;
            });
          },
          onExit: (_) {
            setState(() {
              _isHoveredEmail = false;
            });
          },
          child: GestureDetector(
            onTap: () => URLLauncher.launchURL(emailAddress),
            child: Icon(
              FontAwesomeIcons.solidEnvelope,
              color: _isHoveredEmail ? whiteColor : greyColor,
              size: 18.0,
            ),
          ),
        ),
      ],
    );
  }
}
