import 'package:flutter/material.dart';
import 'package:todoapp_normal/constants/colors.dart';

class Fab extends StatelessWidget {
  final Function()? onPressed;
  const Fab({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: backMain,
      onPressed: onPressed,
      child: const Icon(Icons.add),
    );
  }
}
