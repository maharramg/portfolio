import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/extensions.dart';
import 'package:portfolio/utilities/strings.dart';

class LandingView extends StatefulWidget {
  final Function? scrollFunction;

  const LandingView({
    super.key,
    this.scrollFunction,
  });

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Fills the screen below the 72px pinned header.
      height: (MediaQuery.sizeOf(context).height - 72.0).clamp(620.0, double.infinity),
      width: MediaQuery.sizeOf(context).width,
      padding: context.isDesktop
          ? EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.15)
          : context.isTablet
              ? const EdgeInsets.symmetric(horizontal: 24.0).copyWith(top: MediaQuery.sizeOf(context).height * 0.15)
              : const EdgeInsets.symmetric(horizontal: 35.0).copyWith(top: MediaQuery.sizeOf(context).height * 0.1),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF010623),
            Color(0xFF001446),
            Color(0xFF000E34),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                Strings.landing1,
                style: TextStyle(
                  fontSize: context.isDesktop
                      ? 80.0
                      : context.isTablet
                          ? 80.0
                          : 60.0,
                  fontWeight: FontWeight.w800,
                  color: greenColor,
                  fontFamily: neuePowerFont,
                  height: 1.2,
                ),
              ).animate().slideY(duration: 400.ms),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: context.isDesktop
                        ? 50.0
                        : context.isTablet
                            ? 50.0
                            : 30.0,
                    fontWeight: FontWeight.w800,
                    color: whiteColor,
                    fontFamily: neuePowerFont,
                    height: 1.0,
                  ),
                  children: const [
                    TextSpan(
                      text: Strings.landing2,
                    ),
                    TextSpan(
                      text: Strings.landing3,
                      style: TextStyle(color: greenColor),
                    ),
                    TextSpan(
                      text: '.',
                    ),
                  ],
                ),
              ).animate().flip(duration: 400.ms),
              const SizedBox(height: 16.0),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 520.0),
                child: Text(
                  Strings.landing4,
                  textAlign: TextAlign.center,
                  style: (context.isMobile ? size14weight400 : size16weight400).copyWith(color: Colors.white70, height: 1.5),
                ),
              ).animate().flip(duration: 400.ms),
            ],
          ),
          context.isDesktop ? const Spacer() : const SizedBox(),
          Padding(
            padding: context.isDesktop
                ? const EdgeInsets.only(bottom: 40.0)
                : context.isTablet
                    ? EdgeInsets.zero
                    : const EdgeInsets.only(bottom: 10.0),
            child: IconButton(
              tooltip: Strings.scrollToProjects,
              onPressed: () => widget.scrollFunction!(),
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: whiteColor,
                size: context.isDesktop
                    ? 55.0
                    : context.isTablet
                        ? 48.0
                        : 38.0,
              ).animate(onPlay: (controller) => controller.repeat(reverse: true, count: 12)).moveY(end: 8.0, duration: 500.ms, curve: Curves.easeInOut),
            ),
          ),
        ],
      ),
    );
  }
}
