import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/routes.dart';
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
  static Future<void> scrollToSection(GlobalKey key) async {
    await Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 900),
      curve: Curves.easeInOut,
    );

    // Lazy lists only estimate the offset of off-screen sections, so settle on the exact one.
    final context = key.currentContext;
    if (context != null && context.mounted) {
      await Scrollable.ensureVisible(context, duration: const Duration(milliseconds: 200));
    }
  }
}

class Nav {
  // The current tab scrolls to top. Home is always the first route, so going home pops instead of stacking pages.
  static void goTo(BuildContext context, String route) {
    if (ModalRoute.of(context)?.settings.name == route) {
      PrimaryScrollController.of(context).animateTo(
        0.0,
        duration: const Duration(milliseconds: 800),
        curve: Curves.fastOutSlowIn,
      );
    } else if (route == Routes.homeScreen) {
      Navigator.popUntil(context, (route) => route.isFirst);
    } else {
      Navigator.pushNamed(context, route);
    }
  }
}

class EmailService {
  static Future<bool> sendEmail({
    required BuildContext context,
    required String? name,
    required String? email,
    required String? message,
  }) async {
    const serviceID = 'service_gs2flp9';
    const templateID = 'template_fru8mij';
    const publicKey = '8ZxHJWPmbm3JClkwK';

    Map<String, dynamic> templateParams = {
      'user_name': name,
      'user_email': email,
      'user_message': message,
    };

    final messenger = ScaffoldMessenger.of(context);

    void showResult(String text, IconData icon, Color color, Color iconColor) {
      messenger.showSnackBar(
        SnackBar(
          // The bar itself is invisible so the coloured pill can hug its content.
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          behavior: SnackBarBehavior.floating,
          duration: const Duration(seconds: 2),
          content: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(icon, color: iconColor),
                  const SizedBox(width: 5.0),
                  Text(text, style: size16weight500),
                ],
              ),
            ),
          ),
        ),
      );
    }

    try {
      final response = await http.post(
        Uri.parse('https://api.emailjs.com/api/v1.0/email/send'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'service_id': serviceID,
          'template_id': templateID,
          'user_id': publicKey,
          'template_params': templateParams,
        }),
      );

      if (response.statusCode != 200) throw Exception(response.body);

      showResult('Email sent', Icons.check, primaryColor, greenColor);

      log('Email Sent!');
      return true;
    } catch (e) {
      showResult('Something went wrong, try again', Icons.close_rounded, errorColor, whiteColor);

      log('Email Error! $e');
      return false;
    }
  }
}
