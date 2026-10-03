import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/presentation/widgets/hover_underline_text.dart';
import 'package:portfolio/presentation/widgets/logo.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/extensions.dart';
import 'package:portfolio/utilities/routes.dart';
import 'package:portfolio/utilities/services.dart';
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
    final String? currentRoute = ModalRoute.of(context)?.settings.name;

    return Container(
      height: 72.0,
      color: widget.bgColor,
      padding: EdgeInsets.symmetric(
        horizontal: context.isDesktop
            ? 130.0
            : context.isTablet
                ? 100.0
                : 20.0,
      ),
      decoration: widget.bgColor == null
          ? const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF010623),
                  Color(0xFF001446),
                  Color(0xFF000E34),
                ],
              ),
            )
          : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => Nav.goTo(context, Routes.homeScreen),
            child: Tooltip(
              message: Strings.home,
              child: Logo(height: context.isMobile ? 26.0 : 32.0, dark: widget.bgColor != null),
            ).animate().slideX(duration: 400.ms, begin: -3, end: 0),
          ),
          _buildTabs(currentRoute).animate().slideX(duration: 400.ms, begin: 3, end: 0),
        ],
      ),
    );
  }

  Widget _buildTabs(String? currentRoute) {
    return Row(
      children: [
        HoverUnderlineText(
          text: Strings.tabWork,
          textStyle: size14weight500.copyWith(color: widget.bgColor == whiteColor ? primaryColor : whiteColor),
          isTabSelected: currentRoute == Routes.homeScreen,
          onPressed: () => Nav.goTo(context, Routes.homeScreen),
        ),
        SizedBox(width: context.isMobile ? 16.0 : 24.0),
        HoverUnderlineText(
          text: Strings.tabAbout,
          textStyle: size14weight500.copyWith(color: widget.bgColor == whiteColor ? primaryColor : whiteColor),
          isTabSelected: currentRoute == Routes.aboutScreen,
          onPressed: () => Nav.goTo(context, Routes.aboutScreen),
        ),
        SizedBox(width: context.isMobile ? 16.0 : 24.0),
        HoverUnderlineText(
          text: Strings.tabContact,
          textStyle: size14weight500.copyWith(color: widget.bgColor == whiteColor ? primaryColor : whiteColor),
          isTabSelected: false,
          onPressed: () => widget.scrollFunction!(),
        ),
      ],
    );
  }
}
