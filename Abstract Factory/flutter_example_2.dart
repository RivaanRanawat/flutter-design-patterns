import 'package:flutter/material.dart';
import 'package:playground/platform_button.dart';
import 'package:playground/platform_indicator.dart';

// Approach 2
// PlatformButton and PlatformIndicator are created using Factory Method Pattern.

class AbstractFactoryImpl {
  static Widget buildButton(BuildContext context, String text, VoidCallback onPressed) {
    return PlatformButton(Theme.of(context).platform).build(
      onPressed,
      Text(text),
    );
  }

  static Widget buildIndicator(BuildContext context) {
    return PlatformIndicator(Theme.of(context).platform).build();
  }
}
