import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  bool get isMobile => MediaQuery.of(this).size.width < 800;
  bool get isTablet => MediaQuery.of(this).size.width >= 800 && MediaQuery.of(this).size.width <= 1200;
  bool get isDesktop => MediaQuery.of(this).size.width >= 1200;
}
