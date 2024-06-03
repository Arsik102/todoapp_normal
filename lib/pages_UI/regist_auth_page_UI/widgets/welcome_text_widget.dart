import 'package:flutter/material.dart';
import 'package:todoapp_normal/constants/fonts.dart';

class WelcomeTextWidget extends StatelessWidget {
  final welcomeText;
  const WelcomeTextWidget({
    super.key,
    required this.welcomeText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 40,
      ),
      child: Text(
        '$welcomeText',
        style: laregeText,
      ),
    );
  }
}
