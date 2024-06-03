import 'package:flutter/material.dart';
import 'package:todoapp_normal/constants/fonts.dart';

class LogUpButtonWidget extends StatelessWidget {
  const LogUpButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      child: Text(
        'Зарегистрироваться',
        style: mediumText,
      ),
      style: FilledButton.styleFrom(
        backgroundColor: Colors.blue,
        fixedSize: Size(300, 50),
      ),
    );
  }
}
