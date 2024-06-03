import 'package:flutter/material.dart';
import 'package:todoapp_normal/constants/fonts.dart';

class NewUserButton extends StatelessWidget {
  const NewUserButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Создать новый ', style: mediumText),
        Text(
          'аккаунт?',
          style: TextStyle(fontSize: 18, color: Colors.blue),
        ),
      ],
    );
  }
}
