import 'package:flutter/material.dart';

double getResponsiveText({
  required BuildContext context,
  required double fontSize,
}) {
  double scaleFator = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFator;

  double lowerLimit = responsiveFontSize * 0.8;
  double upperLimit = responsiveFontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
