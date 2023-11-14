import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/services.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          decoration: BoxDecoration(
            color: headingBgColor,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/icons/main-icon.png'),
              _buildSocialField(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialField() {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MouseRegion(
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
            child: IconButton(
              onPressed: () => URLLauncher.launchURL(githubUrl),
              color: _isHoveredGithub ? whiteColor : greyColor,
              iconSize: 18.0,
              icon: const Icon(FontAwesomeIcons.github),
            ),
          ),
          MouseRegion(
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
            child: IconButton(
              onPressed: () => URLLauncher.launchURL(linkedinUrl),
              color: _isHoveredLinkedin ? whiteColor : greyColor,
              iconSize: 18.0,
              icon: const Icon(FontAwesomeIcons.linkedin),
            ),
          ),
          MouseRegion(
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
            child: IconButton(
              onPressed: () => URLLauncher.launchURL(instagramUrl),
              color: _isHoveredInstagram ? whiteColor : greyColor,
              iconSize: 18.0,
              icon: const Icon(FontAwesomeIcons.instagram),
            ),
          ),
          MouseRegion(
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
            child: IconButton(
              onPressed: () => URLLauncher.launchURL(facebookUrl),
              color: _isHoveredFacebook ? whiteColor : greyColor,
              iconSize: 18.0,
              icon: const Icon(FontAwesomeIcons.facebook),
            ),
          ),
          MouseRegion(
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
            child: IconButton(
              onPressed: () => URLLauncher.launchEmail(emailAddress),
              color: _isHoveredEmail ? whiteColor : greyColor,
              iconSize: 18.0,
              icon: const Icon(FontAwesomeIcons.solidEnvelope),
            ),
          ),
        ],
      ),
    );
  }
}
