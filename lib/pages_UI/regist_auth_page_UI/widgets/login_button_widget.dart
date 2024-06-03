import 'package:flutter/material.dart';
import 'package:todoapp_normal/constants/fonts.dart';

class LogInButtonWidget extends StatelessWidget {
  const LogInButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      child: Text(
        'Войти',
        style: mediumText,
      ),
      style: FilledButton.styleFrom(
        backgroundColor: Colors.blue,
        fixedSize: Size(300, 50),
      ),
    );
  }
}
