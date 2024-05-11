import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

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

class EmailService {
  static Future<void> sendEmail({
    required BuildContext context,
    required String? name,
    required String? email,
    required String? message,
  }) async {
    const serviceID = 'service_ojvtb4r';
    const templateID = 'template_fru8mij';
    const userID = 'BpTXVWjoc7ESIaQJq';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');

    final headers = {'Content-type': 'application/json'};

    final requestBody = json.encode({
      'service_id': serviceID,
      'template_id': templateID,
      'user_id': userID,
      'template_params': {
        'user_name': name,
        'user_email': email,
        'user_message': message,
      }
    });

    final response = await http.post(
      url,
      headers: headers,
      body: requestBody,
    );

    // ignore: use_build_context_synchronously
    FToast fToast = FToast().init(context);

    if (response.statusCode == 200) {
      fToast.showToast(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
          decoration: BoxDecoration(
            color: greenColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.check, color: whiteColor),
              const SizedBox(width: 5.0),
              Text(
                'Email sent',
                style: size16weight500,
              ),
            ],
          ),
        ),
        gravity: ToastGravity.BOTTOM,
        fadeDuration: const Duration(milliseconds: 500),
        toastDuration: const Duration(seconds: 2),
      );
    } else {
      fToast.showToast(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.close_rounded, color: whiteColor),
              const SizedBox(width: 5.0),
              Text(
                'Error, try again',
                style: size16weight500,
              ),
            ],
          ),
        ),
        gravity: ToastGravity.BOTTOM,
        fadeDuration: const Duration(milliseconds: 500),
        toastDuration: const Duration(seconds: 2),
      );
    }
  }
}
