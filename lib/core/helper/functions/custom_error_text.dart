import 'package:flutter/material.dart';

class CustomErrorText extends StatelessWidget {
  const CustomErrorText({super.key, required this.errorText});
  final String errorText;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorText,
        style: const TextStyle(
          color: Colors.red,
          fontSize: 16,
          fontFamily: 'Cairo',
        ),
      ),
    );
  }
}
