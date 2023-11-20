import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/services.dart';

class TopDrawer extends StatefulWidget {
  const TopDrawer({super.key});

  @override
  State<TopDrawer> createState() => _TopDrawerState();
}

class _TopDrawerState extends State<TopDrawer> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 450),
    );
    slideAnimation = Tween<Offset>(
      begin: const Offset(0.0, -4.0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.decelerate,
      ),
    );
    controller.addListener(() {
      setState(() {});
    });
    controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideAnimation,
      child: Container(
        color: headingBgColor,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(
                      Icons.close,
                      size: 30.0,
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
              Image.asset(
                'assets/images/icons/main-icon.png',
                height: 180.0,
              ),
              const SizedBox(height: 24.0),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () => URLLauncher.launchURL(resumeUrl),
                      style: TextButton.styleFrom(
                        elevation: 0.0,
                        foregroundColor: Colors.transparent,
                        fixedSize: const Size(180, 50),
                        shape: const RoundedRectangleBorder(),
                      ),
                      child: Text(
                        'Resume',
                        style: size32weight600,
                      ),
                    ),
                    const SizedBox(
                      width: 80.0,
                      child: Divider(
                        color: whiteColor,
                        height: 5.0,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              _buildSocialField(),
              const SizedBox(height: 24.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialField() {
    bool isHoveredGithub = true;
    bool isHoveredLinkedin = true;
    bool isHoveredInstagram = true;
    bool isHoveredFacebook = true;
    bool isHoveredEmail = true;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MouseRegion(
          onEnter: (_) {
            setState(() {
              isHoveredGithub = true;
            });
          },
          onExit: (_) {
            setState(() {
              isHoveredGithub = false;
            });
          },
          child: GestureDetector(
            onTap: () => URLLauncher.launchURL(githubUrl),
            child: Icon(
              FontAwesomeIcons.github,
              color: isHoveredGithub ? whiteColor : greyColor,
              size: 24.0,
            ),
          ),
        ),
        const SizedBox(width: 12.0),
        MouseRegion(
          onEnter: (_) {
            setState(() {
              isHoveredLinkedin = true;
            });
          },
          onExit: (_) {
            setState(() {
              isHoveredLinkedin = false;
            });
          },
          child: GestureDetector(
            onTap: () => URLLauncher.launchURL(linkedinUrl),
            child: Icon(
              FontAwesomeIcons.linkedin,
              color: isHoveredLinkedin ? whiteColor : greyColor,
              size: 24.0,
            ),
          ),
        ),
        const SizedBox(width: 12.0),
        MouseRegion(
          onEnter: (_) {
            setState(() {
              isHoveredInstagram = true;
            });
          },
          onExit: (_) {
            setState(() {
              isHoveredInstagram = false;
            });
          },
          child: GestureDetector(
            onTap: () => URLLauncher.launchURL(instagramUrl),
            child: Icon(
              FontAwesomeIcons.instagram,
              color: isHoveredInstagram ? whiteColor : greyColor,
              size: 24.0,
            ),
          ),
        ),
        const SizedBox(width: 12.0),
        MouseRegion(
          onEnter: (_) {
            setState(() {
              isHoveredFacebook = true;
            });
          },
          onExit: (_) {
            setState(() {
              isHoveredFacebook = false;
            });
          },
          child: GestureDetector(
            onTap: () => URLLauncher.launchURL(facebookUrl),
            child: Icon(
              FontAwesomeIcons.facebook,
              color: isHoveredFacebook ? whiteColor : greyColor,
              size: 24.0,
            ),
          ),
        ),
        const SizedBox(width: 12.0),
        MouseRegion(
          onEnter: (_) {
            setState(() {
              isHoveredEmail = true;
            });
          },
          onExit: (_) {
            setState(() {
              isHoveredEmail = false;
            });
          },
          child: GestureDetector(
            onTap: () => URLLauncher.launchURL(emailAddress),
            child: Icon(
              FontAwesomeIcons.solidEnvelope,
              color: isHoveredEmail ? whiteColor : greyColor,
              size: 24.0,
            ),
          ),
        ),
      ],
    );
  }
}
