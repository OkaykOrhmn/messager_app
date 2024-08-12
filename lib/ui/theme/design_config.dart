// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DesignConfig {
  static const BorderRadius lowBorderRadius = BorderRadius.all(
    Radius.circular(8),
  );
  static const BorderRadius mediumBorderRadius = BorderRadius.all(
    Radius.circular(12),
  );
  static const BorderRadius highBorderRadius = BorderRadius.all(
    Radius.circular(16),
  );

  static const BorderRadius circularBorderRadius = BorderRadius.all(
    Radius.circular(360),
  );

  static const BorderRadius veryHighBorderRadius = BorderRadius.all(
    Radius.circular(24),
  );

  static const Radius aLowBorderRadius = Radius.circular(8);
  static const Radius aMediumBorderRadius = Radius.circular(10);
  static const Radius aHighBorderRadius = Radius.circular(16);
  static const Radius aVeryHighBorderRadius = Radius.circular(24);

  static List<BoxShadow> defaultShadow(BuildContext context) => [
        BoxShadow(
          color: Colors.white.withOpacity(0.25),
          blurRadius: 16,
          spreadRadius: 0,
        )
      ];

  static List<BoxShadow> get mediumShadow => [
        BoxShadow(
          color: const Color(0XFF1B3C59).withOpacity(0.25),
          blurRadius: 10,
          spreadRadius: 0,
        )
      ];

  static List<BoxShadow> get lowShadow => [
        BoxShadow(
          color: const Color(0XFF1B3C59).withOpacity(0.1),
          blurRadius: 10,
          spreadRadius: 0,
        )
      ];

  static EdgeInsetsGeometry horizontalListViwItemPadding(
      double size, int index, int count) {
    return index == 0
        ? EdgeInsets.fromLTRB((size / 2), size, size, size)
        : index == count
            ? EdgeInsets.fromLTRB(size, size, (size / 2), size)
            : EdgeInsets.symmetric(horizontal: (size / 2), vertical: size);
  }

  static EdgeInsetsGeometry verticalListViwItemPadding(
      double size, int index, int count) {
    return index == 0
        ? EdgeInsets.fromLTRB(size, 0, size, size)
        : index == count
            ? EdgeInsets.fromLTRB(size, size, size, 0)
            : EdgeInsets.symmetric(horizontal: size, vertical: (size / 2));
  }

  static Brightness brightness(BuildContext context) =>
      Theme.of(context).brightness;
  static bool get isDark => brightness == Brightness.dark;

  static const Duration lowAnimationDuration = Duration(milliseconds: 300);
  static const Duration mediumAnimationDuration = Duration(milliseconds: 350);
  static const Duration highAnimationDuration = Duration(milliseconds: 400);

  static SystemUiOverlayStyle systemUiOverlayStyle(BuildContext context) =>
      SystemUiOverlayStyle(
        statusBarIconBrightness:
            brightness == Brightness.dark ? Brightness.light : Brightness.dark,
        statusBarColor: Theme.of(context).colorScheme.surface,
        systemNavigationBarColor: Theme.of(context).colorScheme.surface,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarIconBrightness:
            brightness == Brightness.dark ? Brightness.light : Brightness.dark,
      );

  static void updateSystemUiOverlayStyle(BuildContext context) {
    Future.delayed(
      DesignConfig.lowAnimationDuration,
      () => SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle(context)),
    );
  }
}
