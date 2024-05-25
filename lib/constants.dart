import 'package:flutter/material.dart';


class ScreenConstants {
  static double maxWidth = 375;
  static double tabWidth = 600;
}

const textFieldFillColor = Color(0xFFF4F4F4);
const primaryButtonColor = Color(0xFF0082FF);

//NavKey
final navigatorKey = GlobalKey<NavigatorState>();
NavigatorState get navigator => navigatorKey.currentState!;