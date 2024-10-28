import 'package:flutter/material.dart';

// Urls
const String githubUrl = 'https://github.com/maharramg';
const String linkedinUrl = 'https://www.linkedin.com/in/maharramg/';
const String instagramUrl = 'https://www.instagram.com/matyshere/';
const String facebookUrl = 'https://www.facebook.com/matyshere';
const String resumeUrl = 'https://maharramguliyev.com/assets/Maharram_Guliyev_CV.pdf';
const String emailAddress = 'maharramguliev@gmail.com';

// Fonts
const String poppinsFont = 'Poppins';
const String neuePowerFont = 'NeuePower';

const appFontTextStyle = TextStyle(fontFamily: poppinsFont);

// Colors
const primaryColor = Color(0xff001446);
const secondaryColor = Color(0xff303134);
const tertiaryColor = Color(0xff010623);
const headingBgColor = Color(0xff131416);
const scaffoldBgColor = Color(0xFFEEEEEE);
const whiteColor = Colors.white;
const blackColor = Colors.black;
const greyColor = Colors.grey;
const blueColor = Colors.blue;
const errorColor = Colors.red;
const greenColor = Color(0xFF24FF00);

// Text Styles
final size10weight400 = appFontTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w400, color: whiteColor);
final size10weight500 = appFontTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w500, color: whiteColor);
final size10weight600 = appFontTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w600, color: whiteColor);
final size10weight700 = appFontTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w700, color: whiteColor);
final size10weight900 = appFontTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w900, color: whiteColor);

final size11weight400 = appFontTextStyle.copyWith(fontSize: 11.0, fontWeight: FontWeight.w400, color: whiteColor);
final size11weight500 = appFontTextStyle.copyWith(fontSize: 11.0, fontWeight: FontWeight.w500, color: whiteColor);
final size11weight600 = appFontTextStyle.copyWith(fontSize: 11.0, fontWeight: FontWeight.w600, color: whiteColor);
final size11weight700 = appFontTextStyle.copyWith(fontSize: 11.0, fontWeight: FontWeight.w700, color: whiteColor);
final size11weight900 = appFontTextStyle.copyWith(fontSize: 11.0, fontWeight: FontWeight.w900, color: whiteColor);

final size12weight400 = appFontTextStyle.copyWith(fontSize: 12.0, fontWeight: FontWeight.w400, color: whiteColor);
final size12weight500 = appFontTextStyle.copyWith(fontSize: 12.0, fontWeight: FontWeight.w500, color: whiteColor);
final size12weight600 = appFontTextStyle.copyWith(fontSize: 12.0, fontWeight: FontWeight.w600, color: whiteColor);
final size12weight700 = appFontTextStyle.copyWith(fontSize: 12.0, fontWeight: FontWeight.w700, color: whiteColor);
final size12weight900 = appFontTextStyle.copyWith(fontSize: 12.0, fontWeight: FontWeight.w900, color: whiteColor);

final size13weight400 = appFontTextStyle.copyWith(fontSize: 13.0, fontWeight: FontWeight.w400, color: whiteColor);
final size13weight500 = appFontTextStyle.copyWith(fontSize: 13.0, fontWeight: FontWeight.w500, color: whiteColor);
final size13weight600 = appFontTextStyle.copyWith(fontSize: 13.0, fontWeight: FontWeight.w600, color: whiteColor);
final size13weight700 = appFontTextStyle.copyWith(fontSize: 13.0, fontWeight: FontWeight.w700, color: whiteColor);
final size13weight900 = appFontTextStyle.copyWith(fontSize: 13.0, fontWeight: FontWeight.w900, color: whiteColor);

final size14weight400 = appFontTextStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.w400, color: whiteColor);
final size14weight500 = appFontTextStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: whiteColor);
final size14weight600 = appFontTextStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.w600, color: whiteColor);
final size14weight700 = appFontTextStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.w700, color: whiteColor);
final size14weight900 = appFontTextStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.w900, color: whiteColor);

final size15weight400 = appFontTextStyle.copyWith(fontSize: 15.0, fontWeight: FontWeight.w400, color: whiteColor);
final size15weight500 = appFontTextStyle.copyWith(fontSize: 15.0, fontWeight: FontWeight.w500, color: whiteColor);
final size15weight600 = appFontTextStyle.copyWith(fontSize: 15.0, fontWeight: FontWeight.w600, color: whiteColor);
final size15weight700 = appFontTextStyle.copyWith(fontSize: 15.0, fontWeight: FontWeight.w700, color: whiteColor);
final size15weight900 = appFontTextStyle.copyWith(fontSize: 15.0, fontWeight: FontWeight.w900, color: whiteColor);

final size16weight400 = appFontTextStyle.copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: whiteColor);
final size16weight500 = appFontTextStyle.copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: whiteColor);
final size16weight600 = appFontTextStyle.copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: whiteColor);
final size16weight700 = appFontTextStyle.copyWith(fontSize: 16.0, fontWeight: FontWeight.w700, color: whiteColor);
final size16weight900 = appFontTextStyle.copyWith(fontSize: 16.0, fontWeight: FontWeight.w900, color: whiteColor);

final size17weight400 = appFontTextStyle.copyWith(fontSize: 17.0, fontWeight: FontWeight.w400, color: whiteColor);
final size17weight500 = appFontTextStyle.copyWith(fontSize: 17.0, fontWeight: FontWeight.w500, color: whiteColor);
final size17weight600 = appFontTextStyle.copyWith(fontSize: 17.0, fontWeight: FontWeight.w600, color: whiteColor);
final size17weight700 = appFontTextStyle.copyWith(fontSize: 17.0, fontWeight: FontWeight.w700, color: whiteColor);
final size17weight900 = appFontTextStyle.copyWith(fontSize: 17.0, fontWeight: FontWeight.w900, color: whiteColor);

final size18weight400 = appFontTextStyle.copyWith(fontSize: 18.0, fontWeight: FontWeight.w400, color: whiteColor);
final size18weight500 = appFontTextStyle.copyWith(fontSize: 18.0, fontWeight: FontWeight.w500, color: whiteColor);
final size18weight600 = appFontTextStyle.copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: whiteColor);
final size18weight700 = appFontTextStyle.copyWith(fontSize: 18.0, fontWeight: FontWeight.w700, color: whiteColor);
final size18weight900 = appFontTextStyle.copyWith(fontSize: 18.0, fontWeight: FontWeight.w900, color: whiteColor);

final size20weight400 = appFontTextStyle.copyWith(fontSize: 20.0, fontWeight: FontWeight.w400, color: whiteColor);
final size20weight500 = appFontTextStyle.copyWith(fontSize: 20.0, fontWeight: FontWeight.w500, color: whiteColor);
final size20weight600 = appFontTextStyle.copyWith(fontSize: 20.0, fontWeight: FontWeight.w600, color: whiteColor);
final size20weight700 = appFontTextStyle.copyWith(fontSize: 20.0, fontWeight: FontWeight.w700, color: whiteColor);
final size20weight900 = appFontTextStyle.copyWith(fontSize: 20.0, fontWeight: FontWeight.w900, color: whiteColor);

final size24weight400 = appFontTextStyle.copyWith(fontSize: 24.0, fontWeight: FontWeight.w400, color: whiteColor);
final size24weight500 = appFontTextStyle.copyWith(fontSize: 24.0, fontWeight: FontWeight.w500, color: whiteColor);
final size24weight600 = appFontTextStyle.copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: whiteColor);
final size24weight700 = appFontTextStyle.copyWith(fontSize: 24.0, fontWeight: FontWeight.w700, color: whiteColor);
final size24weight900 = appFontTextStyle.copyWith(fontSize: 24.0, fontWeight: FontWeight.w900, color: whiteColor);

final size32weight400 = appFontTextStyle.copyWith(fontSize: 32.0, fontWeight: FontWeight.w400, color: whiteColor);
final size32weight500 = appFontTextStyle.copyWith(fontSize: 32.0, fontWeight: FontWeight.w500, color: whiteColor);
final size32weight600 = appFontTextStyle.copyWith(fontSize: 32.0, fontWeight: FontWeight.w600, color: whiteColor);
final size32weight700 = appFontTextStyle.copyWith(fontSize: 32.0, fontWeight: FontWeight.w700, color: whiteColor);
final size32weight900 = appFontTextStyle.copyWith(fontSize: 32.0, fontWeight: FontWeight.w900, color: whiteColor);

// Paddings
const paddingAll24 = EdgeInsets.all(24.0);
const paddingHorizontal24 = EdgeInsets.symmetric(horizontal: 24.0);
const paddingVertical24 = EdgeInsets.symmetric(vertical: 24.0);
