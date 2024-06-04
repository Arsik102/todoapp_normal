import 'package:flutter/material.dart';
import 'package:todoapp_normal/constants/fonts.dart';

class NewUserButton extends StatelessWidget {
  final String text1;
  final String text2;
  final void Function()? onTap;
  const NewUserButton({
    super.key,
    required this.text1,
    required this.text2,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text1, style: mediumText),
        GestureDetector(
          onTap: onTap,
          child: Text(
            text2,
            style: const TextStyle(fontSize: 18, color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
