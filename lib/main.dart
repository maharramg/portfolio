import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/presentation/about/about_screen.dart';
import 'package:portfolio/presentation/home/all_projects_screen.dart';
import 'package:portfolio/presentation/home/home_screen.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/routes.dart';
import 'package:portfolio/utilities/strings.dart';

void main() {
  setPathUrlStrategy();
  runApp(
    MaterialApp(
      title: Strings.title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: poppinsFont,
        scaffoldBackgroundColor: scaffoldBgColor,
        colorSchemeSeed: primaryColor,
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {for (final platform in TargetPlatform.values) platform: const FadeUpwardsPageTransitionsBuilder()},
        ),
      ),
      initialRoute: Routes.homeScreen,
      routes: {
        Routes.homeScreen: (context) => const HomeScreen(),
        Routes.aboutScreen: (context) => const AboutScreen(),
        Routes.projectsScreen: (context) => const AllProjectsScreen(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(builder: (context) => const HomeScreen()),
    ).animate().fadeIn(duration: 400.ms),
  );
}
