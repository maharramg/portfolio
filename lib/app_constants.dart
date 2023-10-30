import 'dart:ui';

import 'package:flutter/material.dart';

// FONT
const appFontTextStyle = TextStyle(fontFamily: 'HankenGrotesk');

// COLORS
const primaryColor = Color(0xffEF6555);
const secondaryColor = Color(0xffE3DFD7);
const scaffoldBackgroundColor = Colors.white;
const textColor = Colors.black;
const whiteColor = Colors.white;

// TEXT STYLES
final size10weight400 = appFontTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w400, color: textColor);
final size10weight500 = appFontTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w500, color: textColor);
final size10weight600 = appFontTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w600, color: textColor);
final size10weight700 = appFontTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w700, color: textColor);
final size10weight900 = appFontTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w900, color: textColor);

final size11weight400 = appFontTextStyle.copyWith(fontSize: 11.0, fontWeight: FontWeight.w400, color: textColor);
final size11weight500 = appFontTextStyle.copyWith(fontSize: 11.0, fontWeight: FontWeight.w500, color: textColor);
final size11weight600 = appFontTextStyle.copyWith(fontSize: 11.0, fontWeight: FontWeight.w600, color: textColor);
final size11weight700 = appFontTextStyle.copyWith(fontSize: 11.0, fontWeight: FontWeight.w700, color: textColor);
final size11weight900 = appFontTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w900, color: textColor);

final size12weight400 = appFontTextStyle.copyWith(fontSize: 12.0, fontWeight: FontWeight.w400, color: textColor);
final size12weight500 = appFontTextStyle.copyWith(fontSize: 12.0, fontWeight: FontWeight.w500, color: textColor);
final size12weight600 = appFontTextStyle.copyWith(fontSize: 12.0, fontWeight: FontWeight.w600, color: textColor);
final size12weight700 = appFontTextStyle.copyWith(fontSize: 12.0, fontWeight: FontWeight.w700, color: textColor);
final size12weight900 = appFontTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w900, color: textColor);

final size13weight400 = appFontTextStyle.copyWith(fontSize: 13.0, fontWeight: FontWeight.w400, color: textColor);
final size13weight500 = appFontTextStyle.copyWith(fontSize: 13.0, fontWeight: FontWeight.w500, color: textColor);
final size13weight600 = appFontTextStyle.copyWith(fontSize: 13.0, fontWeight: FontWeight.w600, color: textColor);
final size13weight700 = appFontTextStyle.copyWith(fontSize: 13.0, fontWeight: FontWeight.w700, color: textColor);
final size13weight900 = appFontTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w900, color: textColor);

final size14weight400 = appFontTextStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.w400, color: textColor);
final size14weight500 = appFontTextStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: textColor);
final size14weight600 = appFontTextStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.w600, color: textColor);
final size14weight700 = appFontTextStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.w700, color: textColor);
final size14weight900 = appFontTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w900, color: textColor);

final size15weight400 = appFontTextStyle.copyWith(fontSize: 15.0, fontWeight: FontWeight.w400, color: textColor);
final size15weight500 = appFontTextStyle.copyWith(fontSize: 15.0, fontWeight: FontWeight.w500, color: textColor);
final size15weight600 = appFontTextStyle.copyWith(fontSize: 15.0, fontWeight: FontWeight.w600, color: textColor);
final size15weight700 = appFontTextStyle.copyWith(fontSize: 15.0, fontWeight: FontWeight.w700, color: textColor);
final size15weight900 = appFontTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w900, color: textColor);

final size16weight400 = appFontTextStyle.copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: textColor);
final size16weight500 = appFontTextStyle.copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: textColor);
final size16weight600 = appFontTextStyle.copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: textColor);
final size16weight700 = appFontTextStyle.copyWith(fontSize: 16.0, fontWeight: FontWeight.w700, color: textColor);
final size16weight900 = appFontTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w900, color: textColor);

final size17weight400 = appFontTextStyle.copyWith(fontSize: 17.0, fontWeight: FontWeight.w400, color: textColor);
final size17weight500 = appFontTextStyle.copyWith(fontSize: 17.0, fontWeight: FontWeight.w500, color: textColor);
final size17weight600 = appFontTextStyle.copyWith(fontSize: 17.0, fontWeight: FontWeight.w600, color: textColor);
final size17weight700 = appFontTextStyle.copyWith(fontSize: 17.0, fontWeight: FontWeight.w700, color: textColor);
final size17weight900 = appFontTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w900, color: textColor);

final size18weight400 = appFontTextStyle.copyWith(fontSize: 18.0, fontWeight: FontWeight.w400, color: textColor);
final size18weight500 = appFontTextStyle.copyWith(fontSize: 18.0, fontWeight: FontWeight.w500, color: textColor);
final size18weight600 = appFontTextStyle.copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: textColor);
final size18weight700 = appFontTextStyle.copyWith(fontSize: 18.0, fontWeight: FontWeight.w700, color: textColor);
final size18weight900 = appFontTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w900, color: textColor);

final size20weight400 = appFontTextStyle.copyWith(fontSize: 20.0, fontWeight: FontWeight.w400, color: textColor);
final size20weight500 = appFontTextStyle.copyWith(fontSize: 20.0, fontWeight: FontWeight.w500, color: textColor);
final size20weight600 = appFontTextStyle.copyWith(fontSize: 20.0, fontWeight: FontWeight.w600, color: textColor);
final size20weight700 = appFontTextStyle.copyWith(fontSize: 20.0, fontWeight: FontWeight.w700, color: textColor);
final size20weight900 = appFontTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w900, color: textColor);

final size24weight400 = appFontTextStyle.copyWith(fontSize: 24.0, fontWeight: FontWeight.w400, color: textColor);
final size24weight500 = appFontTextStyle.copyWith(fontSize: 24.0, fontWeight: FontWeight.w500, color: textColor);
final size24weight600 = appFontTextStyle.copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: textColor);
final size24weight700 = appFontTextStyle.copyWith(fontSize: 24.0, fontWeight: FontWeight.w700, color: textColor);
final size24weight900 = appFontTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w900, color: textColor);

final size32weight400 = appFontTextStyle.copyWith(fontSize: 32.0, fontWeight: FontWeight.w400, color: textColor);
final size32weight500 = appFontTextStyle.copyWith(fontSize: 32.0, fontWeight: FontWeight.w500, color: textColor);
final size32weight600 = appFontTextStyle.copyWith(fontSize: 32.0, fontWeight: FontWeight.w600, color: textColor);
final size32weight700 = appFontTextStyle.copyWith(fontSize: 32.0, fontWeight: FontWeight.w700, color: textColor);
final size32weight900 = appFontTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w900, color: textColor);

// SIZES
FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;

final screenHeight = view.physicalSize.height;
final screenWidth = view.physicalSize.width;

// PADDING
const paddingAll24 = EdgeInsets.all(24.0);
const paddingHorizontal24 = EdgeInsets.symmetric(horizontal: 24.0);
const paddingVertical24 = EdgeInsets.symmetric(vertical: 24.0);
