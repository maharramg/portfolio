import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/presentation/desktop/desktop_home_screen.dart';
import 'package:portfolio/presentation/mobile/mobile_home_screen.dart';
import 'package:portfolio/presentation/tablet/tablet_home_screen.dart';
import 'package:portfolio/responsive/responsive_layout.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/strings.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'HankenGrotesk',
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: primaryColor,
          onPrimary: primaryColor,
          secondary: secondaryColor,
          onSecondary: secondaryColor,
          error: errorColor,
          onError: errorColor,
          background: primaryColor,
          onBackground: primaryColor,
          surface: primaryColor,
          onSurface: primaryColor,
        ),
      ),
      home: const ResponsiveLayout(
        mobileView: MobileHomeScreen(),
        tabletView: TabletHomeScreen(),
        desktopView: DesktopHomeScreen(),
      ),
    ).animate().fadeIn(duration: 400.ms);
  }
}
