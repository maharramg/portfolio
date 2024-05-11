import 'package:flutter/material.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/extensions.dart';
import 'package:portfolio/utilities/services.dart';

class SocialIcon extends StatefulWidget {
  final IconData icon;
  final String url;
  final bool isEmail;

  const SocialIcon({
    super.key,
    required this.icon,
    required this.url,
    this.isEmail = false,
  });

  @override
  State<SocialIcon> createState() => _SocialIconState();
}

class _SocialIconState extends State<SocialIcon> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.isEmail ? URLLauncher.launchEmail(email: widget.url, message: '', name: '') : URLLauncher.launchURL(widget.url),
      onHover: (value) {
        setState(() {
          isHovered = !isHovered;
        });
      },
      child: Icon(
        widget.icon,
        color: isHovered ? greenColor : whiteColor,
        size: context.isDesktop
            ? 30.0
            : context.isTablet
                ? 25.0
                : 25.0,
      ),
    );
  }
}
