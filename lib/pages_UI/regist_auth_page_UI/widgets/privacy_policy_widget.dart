import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todoapp_normal/constants/fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyPolicyWidget extends StatefulWidget {
  final String text1;
  final String text2;
  const PrivacyPolicyWidget({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  State<PrivacyPolicyWidget> createState() => _PrivacyPolicyWidgetState();
}

class _PrivacyPolicyWidgetState extends State<PrivacyPolicyWidget> {
  // checkbox method
  var icon1 = const Icon(Icons.check_box_outline_blank, color: Colors.black);
  var icon2 = const Icon(Icons.check_circle, color: Colors.green);
  void checkbox() {
    setState(() {
      icon1 = icon2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 30,
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: checkbox,
                icon: icon1,
              ),
              const SizedBox(width: 5),
              Text(
                widget.text1,
                style: mediumText,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 45),
          child: GestureDetector(
            onTap: () async {
              final websiteurl =
                  Uri.parse('https://www.youtube.com/watch?v=dQw4w9WgXcQ');
              if (await canLaunchUrl(websiteurl)) {
                launchUrl(websiteurl);
              } else {
                log('can not $websiteurl');
              }
            },
            child: Text(
              widget.text2,
              style: const TextStyle(
                  fontSize: 17, color: Colors.blue, fontFamily: 'Nunito'),
            ),
          ),
        ),
      ],
    );
  }
}
