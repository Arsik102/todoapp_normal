import 'package:flutter/material.dart';
import 'package:todoapp_normal/constants/fonts.dart';

class LogInButtonWidget extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const LogInButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: Colors.blue,
        fixedSize: const Size(300, 50),
      ),
      child: Text(
        text,
        style: mediumText,
      ),
    );
  }
}
