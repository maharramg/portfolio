import 'package:flutter/material.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:url_launcher/url_launcher.dart';

class URLLauncher {
  static Future<void> launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw Exception('Could not launch $url');
    }
  }

  static Future<void> launchEmail({
    required String? name,
    required String? email,
    required String? message,
  }) async {
    if (await canLaunchUrl(Uri.parse('mailto:$emailAddress?subject=Portfolio&body=$message'))) {
      await launchUrl(
        Uri.parse('mailto:$emailAddress?subject=Portfolio&body=$message'),
        mode: LaunchMode.externalApplication,
      );
    } else {
      throw Exception('Could not launch email app');
    }
  }
}

class Scroll {
  static scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 900),
      curve: Curves.easeInOut,
    );
  }
}
