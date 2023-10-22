import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

// Some utility extensions on responsive_framework package.
extension BuildContextX on BuildContext {
  ResponsiveBreakpointsData get responsiveness {
    return ResponsiveBreakpoints.of(this);
  }

  bool get isMobile => responsiveness.isMobile;
  bool get isTablet => responsiveness.isTablet;
  bool get isDesktop => responsiveness.isDesktop;

  bool get islargerThanMobile => responsiveness.largerThan(MOBILE);
  bool get isSmallerThanTablet => responsiveness.smallerThan(TABLET);
  bool get isEqualToDesktop => responsiveness.equals(DESKTOP);
  bool get isBetweenMobileAndTablet => responsiveness.between(MOBILE, TABLET);
}
