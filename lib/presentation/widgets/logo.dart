import 'package:flutter/material.dart';
import 'package:portfolio/utilities/strings.dart';

class Logo extends StatelessWidget {
  final double height;
  final bool dark;

  const Logo({
    super.key,
    required this.height,
    this.dark = false,
  });

  @override
  Widget build(BuildContext context) {
    // The monogram has padding around its letters, so it is drawn larger to match the wordmark.
    final iconSize = height * 1.4;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(iconSize * 0.2),
          child: Image.asset(
            dark ? Strings.mgIcon : Strings.mgIconWhite,
            height: iconSize,
            cacheHeight: 256,
          ),
        ),
        SizedBox(width: height * 0.3),
        Image.asset(
          dark ? Strings.mainIconDark : Strings.mainIconLight,
          height: height,
          semanticLabel: Strings.title,
        ),
      ],
    );
  }
}
