import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle styleRegular18(BuildContext context) {
    return TextStyle(
      fontSize: getResonsiveFontSize(context: context, baseFontSize: 18),
      color: Theme.of(context).colorScheme.surface,
    );
  }

  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      fontSize: getResonsiveFontSize(context: context, baseFontSize: 16),
      color: Theme.of(context).colorScheme.onSurface,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResonsiveFontSize(context: context, baseFontSize: 16),
      color: Theme.of(context).colorScheme.secondary,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle styleBold18(BuildContext context) {
    return TextStyle(
      fontSize: getResonsiveFontSize(context: context, baseFontSize: 18),
      color: Theme.of(context).colorScheme.secondary,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle styleBold24(BuildContext context) {
    return TextStyle(
      fontSize: getResonsiveFontSize(context: context, baseFontSize: 24),
      color: Theme.of(context).colorScheme.secondary,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle styleBold36(BuildContext context) {
    return TextStyle(
      fontSize: getResonsiveFontSize(context: context, baseFontSize: 36),
      color: Theme.of(context).colorScheme.surface,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle styleReglar12(BuildContext context) {
    return TextStyle(
      fontSize: getResonsiveFontSize(context: context, baseFontSize: 12),
      color: Theme.of(context).colorScheme.onSurface,
    );
  }

  static TextStyle styleReglar14(BuildContext context) {
    return TextStyle(
      fontSize: getResonsiveFontSize(context: context, baseFontSize: 14),
      color: Theme.of(context).colorScheme.tertiary,
    );
  }

  static TextStyle styleReglar10(BuildContext context) {
    return TextStyle(
      fontSize: getResonsiveFontSize(context: context, baseFontSize: 10),
      color: Theme.of(context).colorScheme.tertiary,
    );
  }
}

double getResonsiveFontSize({
  required double baseFontSize,
  required BuildContext context,
}) {
  double scaleFactor = MediaQuery.sizeOf(context).width / 390;
  double responsiveFontSize = baseFontSize * scaleFactor;
  double lowerLimit = baseFontSize * .8;
  double upperLimit = baseFontSize * 1.2;
  responsiveFontSize = responsiveFontSize.clamp(lowerLimit, upperLimit);
  return responsiveFontSize;
}
