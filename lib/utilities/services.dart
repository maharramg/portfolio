import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class EmailService {
  static Future<bool> sendEmail({
    required String name,
    required String email,
    required String message,
  }) async {
    const serviceID = 'service_gs2flp9';
    const templateID = 'template_fru8mij';
    const publicKey = '8ZxHJWPmbm3JClkwK';

    try {
      final response = await http.post(
        Uri.parse('https://api.emailjs.com/api/v1.0/email/send'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'service_id': serviceID,
          'template_id': templateID,
          'user_id': publicKey,
          'template_params': {
            'user_name': name,
            'user_email': email,
            'user_message': message,
          },
        }),
      );

      if (response.statusCode != 200) throw Exception(response.body);

      log('Email Sent!');
      return true;
    } catch (e) {
      log('Email Error! $e');
      return false;
    }
  }
}
