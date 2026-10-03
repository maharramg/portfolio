import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  bool get isMobile => MediaQuery.sizeOf(this).width < 800;
  bool get isTablet => MediaQuery.sizeOf(this).width >= 800 && MediaQuery.sizeOf(this).width <= 1200;
  bool get isDesktop => MediaQuery.sizeOf(this).width >= 1200;
}
