import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/presentation/desktop/desktop_home_screen.dart';
import 'package:portfolio/presentation/mobile/mobile_home_screen.dart';
import 'package:portfolio/presentation/tablet/tablet_home_screen.dart';
import 'package:portfolio/responsive/responsive_layout.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maharram Guliyev',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'HankenGrotesk'),
      home: const ResponsiveLayout(
        mobileView: MobileHomeScreen(),
        tabletView: TabletHomeScreen(),
        desktopView: DesktopHomeScreen(),
      ),
    ).animate().fadeIn(duration: 400.ms);
  }
}
