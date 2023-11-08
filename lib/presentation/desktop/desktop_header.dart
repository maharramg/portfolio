import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utilities/app_constants.dart';

class DesktopHeader extends StatefulWidget {
  const DesktopHeader({super.key});

  @override
  State<DesktopHeader> createState() => _DesktopHeaderState();
}

class _DesktopHeaderState extends State<DesktopHeader> {
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
        aspectRatio: 12 / 5.5,
        child: Container(
          decoration: BoxDecoration(
            color: headingBgColor,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/icons/home-icon-grey.png',
                height: 400,
              ),
              Row(
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
                      onPressed: () {},
                      color: _isHoveredGithub ? whiteColor : greyColor,
                      icon: const Icon(
                        FontAwesomeIcons.github,
                      ),
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
                      onPressed: () {},
                      color: _isHoveredLinkedin ? whiteColor : greyColor,
                      icon: const Icon(
                        FontAwesomeIcons.linkedin,
                      ),
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
                      onPressed: () {},
                      color: _isHoveredInstagram ? whiteColor : greyColor,
                      icon: const Icon(
                        FontAwesomeIcons.instagram,
                      ),
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
                      onPressed: () {},
                      color: _isHoveredFacebook ? whiteColor : greyColor,
                      icon: const Icon(
                        FontAwesomeIcons.facebook,
                      ),
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
                      onPressed: () {},
                      color: _isHoveredEmail ? whiteColor : greyColor,
                      icon: const Icon(
                        FontAwesomeIcons.at,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
