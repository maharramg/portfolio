import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/hover_underline_text.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/extensions.dart';
import 'package:portfolio/utilities/routes.dart';
import 'package:portfolio/utilities/strings.dart';

class Header extends StatefulWidget {
  final Color? bgColor;
  final Function? scrollFunction;

  const Header({
    super.key,
    this.bgColor,
    this.scrollFunction,
  });

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: widget.bgColor,
      padding: EdgeInsets.symmetric(
        horizontal: context.isDesktop
            ? 130.0
            : context.isTablet
                ? 100.0
                : 35.0,
      ),
      decoration: widget.bgColor == null
          ? const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFF010623),
                Color(0xFF001446),
                Color(0xFF000E34),
              ]),
            )
          : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            widget.bgColor == null ? Strings.mainIconLight : Strings.mainIconDark,
            height: 35.0,
          ),
          _buildTabs(),
        ],
      ),
    );
  }

  Widget _buildTabs() {
    return Row(
      children: [
        HoverUnderlineText(
          text: Strings.tabWork,
          textStyle: size12weight400.copyWith(color: widget.bgColor == whiteColor ? primaryColor : whiteColor),
          onPressed: () => Navigator.pushNamed(context, Routes.homeScreen),
        ),
        const SizedBox(width: 12.0),
        HoverUnderlineText(
          text: Strings.tabAbout,
          textStyle: size12weight400.copyWith(color: widget.bgColor == whiteColor ? primaryColor : whiteColor),
          onPressed: () => Navigator.pushNamed(context, Routes.aboutScreen),
        ),
        const SizedBox(width: 12.0),
        HoverUnderlineText(
          text: Strings.tabContact,
          textStyle: size12weight400.copyWith(color: widget.bgColor == whiteColor ? primaryColor : whiteColor),
          onPressed: () => widget.scrollFunction!(),
        ),
      ],
    );
  }
}