import 'package:flutter/material.dart';
import 'package:todoapp_normal/constants/fonts.dart';

class NewPasswordWidget extends StatelessWidget {
  const NewPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Забыли ', style: mediumText),
        Text(
          'Пароль?',
          style: TextStyle(fontSize: 18, color: Colors.blue),
        ),
      ],
    );
  }
}
