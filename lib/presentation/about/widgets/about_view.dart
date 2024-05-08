import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/outlined_button_custom.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/extensions.dart';
import 'package:portfolio/utilities/services.dart';
import 'package:portfolio/utilities/strings.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return context.isDesktop
        ? Container(
            color: whiteColor,
            padding: const EdgeInsets.symmetric(horizontal: 130.0, vertical: 120.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      Strings.aboutTitle,
                      style: TextStyle(
                        fontSize: 60.0,
                        fontWeight: FontWeight.w800,
                        color: tertiaryColor,
                        fontFamily: neuePowerFont,
                        height: 1.0,
                      ),
                    ),
                    const SizedBox(height: 70.0),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.39,
                      child: Text(
                        Strings.aboutDesc,
                        style: size17weight500.copyWith(color: blackColor, height: 1.5),
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    OutlinedButtonCustom(
                      title: Strings.resume,
                      onPressed: () => URLLauncher.launchURL(resumeUrl),
                    ),
                  ],
                ),
                Image.asset(
                  Strings.profileImage,
                  width: MediaQuery.of(context).size.width * 0.375,
                ),
              ],
            ),
          )
        : context.isTablet
            ? Container(
                color: whiteColor,
                padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 100.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          Strings.aboutTitle,
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w800,
                            color: tertiaryColor,
                            fontFamily: neuePowerFont,
                            height: 1.0,
                          ),
                        ),
                        const SizedBox(height: 70.0),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.35,
                          child: Text(
                            Strings.aboutDesc,
                            style: size12weight500.copyWith(color: blackColor, height: 1.5),
                          ),
                        ),
                        const SizedBox(height: 40.0),
                        OutlinedButtonCustom(
                          title: Strings.resume,
                          onPressed: () => URLLauncher.launchURL(resumeUrl),
                        ),
                      ],
                    ),
                    Image.asset(
                      Strings.profileImage,
                      width: MediaQuery.of(context).size.width * 0.35,
                    ),
                  ],
                ),
              )
            : Container(
                color: whiteColor,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 70.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      Strings.profileImage,
                      width: MediaQuery.of(context).size.width * 0.5,
                    ),
                    const SizedBox(height: 40.0),
                    const Text(
                      Strings.aboutTitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w800,
                        color: tertiaryColor,
                        fontFamily: neuePowerFont,
                        height: 1.0,
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Text(
                        Strings.aboutDesc,
                        textAlign: TextAlign.center,
                        style: size12weight500.copyWith(color: blackColor, height: 1.5),
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    OutlinedButtonCustom(
                      title: Strings.resume,
                      onPressed: () => URLLauncher.launchURL(resumeUrl),
                    ),
                  ],
                ),
              );
  }
}
