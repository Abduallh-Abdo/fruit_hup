import 'package:flutter/material.dart';

void showErrorBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 1),
      behavior: SnackBarBehavior.floating,
      content: Text(message),
    ),
  );
}
