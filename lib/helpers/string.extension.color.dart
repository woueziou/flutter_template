import 'package:flutter/widgets.dart';

extension StringToColorExtension on String {
  Color toColor() {
    return Color(
        int.parse(toLowerCase().substring(1, 7), radix: 16) + 0xFF000000);
  }
}
