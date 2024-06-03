import 'package:flutter/material.dart';
import 'package:todoapp_normal/constants/colors.dart';
import 'package:todoapp_normal/constants/fonts.dart';

class InputContainerWidget extends StatelessWidget {
  final texthint;
  const InputContainerWidget({super.key, required this.texthint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 26),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: 300,
          height: 40,
          color: backContAuth,
          child: TextField(
            showCursor: false,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              contentPadding: EdgeInsets.all(10),
              hintText: '$texthint',
              hintStyle: smallText,
            ),
          ),
        ),
      ),
    );
  }
}
