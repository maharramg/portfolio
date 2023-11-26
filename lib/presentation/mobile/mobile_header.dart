import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/presentation/widgets/top_drawer.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/strings.dart';

class MobileHeader extends StatefulWidget implements PreferredSizeWidget {
  const MobileHeader({super.key});

  @override
  State<MobileHeader> createState() => _MobileHeaderState();

  @override
  Size get preferredSize => const Size(double.infinity, 100);
}

class _MobileHeaderState extends State<MobileHeader> {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: widget.preferredSize,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: AspectRatio(
          aspectRatio: 4,
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
                Image.asset(Strings.mainIcon),
                GestureDetector(
                  onTap: () => showDialog(
                    context: context,
                    builder: (context) => const TopDrawer(),
                  ),
                  child: const Icon(
                    FontAwesomeIcons.bars,
                    color: whiteColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
