import 'package:flutter/material.dart';
import 'package:todoapp_normal/constants/colors.dart';
import 'package:todoapp_normal/constants/fonts.dart';

class InputContainerWidget extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  const InputContainerWidget(
      {super.key,
      required this.hintText,
      required this.obscureText,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 26),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: 300,
          height: 40,
          color: backContAuth,
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            showCursor: false,
            decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              contentPadding: const EdgeInsets.all(10),
              hintText: hintText,
              hintStyle: smallText,
            ),
          ),
        ),
      ),
    );
  }
}
