import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
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
      height: context.isDesktop
          ? MediaQuery.of(context).size.height + 80.0
          : context.isTablet
              ? MediaQuery.of(context).size.height - 100.0
              : MediaQuery.of(context).size.height - 100.0,
      width: MediaQuery.of(context).size.width,
      padding: context.isDesktop
          ? EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.23)
          : context.isTablet
              ? const EdgeInsets.symmetric(horizontal: 24.0).copyWith(top: MediaQuery.of(context).size.height * 0.2)
              : const EdgeInsets.symmetric(horizontal: 35.0).copyWith(top: MediaQuery.of(context).size.height * 0.2),
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
              const SizedBox(height: 5.0),
              Text(
                Strings.landing4,
                textAlign: TextAlign.center,
                style: context.isDesktop
                    ? size11weight400
                    : context.isTablet
                        ? size11weight400
                        : size10weight400,
              ).animate().flip(duration: 400.ms),
            ],
          ),
          context.isDesktop ? const Spacer() : const SizedBox(),
          Padding(
            padding: context.isDesktop
                ? const EdgeInsets.only(bottom: 80.0)
                : context.isTablet
                    ? EdgeInsets.zero
                    : const EdgeInsets.only(bottom: 10.0),
            child: InkWell(
              onTap: () => widget.scrollFunction!(),
              child: Lottie.asset(
                'assets/animations/chevron_down.json',
                height: context.isDesktop
                    ? 55.0
                    : context.isTablet
                        ? 48.0
                        : 38.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
