import 'package:flutter/material.dart';
import 'package:todoapp_normal/constants/fonts.dart';

class RegistButtonWidget extends StatelessWidget {
  const RegistButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Уже есть аккаунт? ', style: mediumText),
        Text(
          'Войти',
          style: TextStyle(fontSize: 18, color: Colors.blue),
        ),
      ],
    );
  }
}
