import 'package:url_launcher/url_launcher.dart';

class URLLauncher {
  static Future<void> launchURL(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  static Future<void> launchEmail(String email) async {
    if (!await launchUrl(Uri.parse('mailto:$email'))) {
      throw Exception('Could not launch email app');
    }
  }
}
