import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/presentation/about/about_screen.dart';
import 'package:portfolio/presentation/home/all_projects_screen.dart';
import 'package:portfolio/presentation/home/home_screen.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/routes.dart';
import 'package:portfolio/utilities/strings.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: poppinsFont,
        scaffoldBackgroundColor: scaffoldBgColor,
        colorSchemeSeed: primaryColor,
      ),
      initialRoute: Routes.homeScreen,
      routes: {
        Routes.homeScreen: (context) => const HomeScreen(),
        Routes.aboutScreen: (context) => const AboutScreen(),
        Routes.projectsScreen: (context) => const AllProjectsScreen(),
      },
    ).animate().fadeIn(duration: 400.ms);
  }
}
