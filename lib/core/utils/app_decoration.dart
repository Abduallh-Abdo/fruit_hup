import 'package:flutter/material.dart';

abstract class AppDecorations {
  static var greyBoxDecoration = ShapeDecoration(
    color: const Color(0x33d9d9d9),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  );
}
