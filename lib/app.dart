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

  static const _knownRoutes = [
    Routes.homeScreen,
    Routes.aboutScreen,
    Routes.projectsScreen,
  ];

  static String get _initialRoute {
    final path = Uri.base.path;
    if (path.isEmpty || path == '/') return Routes.homeScreen;
    if (_knownRoutes.contains(path)) return path;
    return Routes.homeScreen;
  }

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
      initialRoute: _initialRoute,
      routes: {
        Routes.homeScreen: (context) => const HomeScreen(),
        Routes.aboutScreen: (context) => const AboutScreen(),
        Routes.projectsScreen: (context) => const AllProjectsScreen(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(builder: (_) => const HomeScreen()),
    ).animate().fadeIn(duration: 400.ms);
  }
}
