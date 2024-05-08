import 'package:flutter/material.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/extensions.dart';
import 'package:portfolio/utilities/services.dart';

class SocialIcon extends StatefulWidget {
  final IconData icon;
  final String url;

  const SocialIcon({
    super.key,
    required this.icon,
    required this.url,
  });

  @override
  State<SocialIcon> createState() => _SocialIconState();
}

class _SocialIconState extends State<SocialIcon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => URLLauncher.launchURL(widget.url),
      icon: Icon(
        widget.icon,
        color: whiteColor,
        size: context.isDesktop
            ? 30.0
            : context.isTablet
                ? 25.0
                : 22.0,
      ),
    );
  }
}
