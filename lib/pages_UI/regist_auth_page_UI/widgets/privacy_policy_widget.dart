import 'package:flutter/material.dart';
import 'package:todoapp_normal/constants/fonts.dart';

class PrivacyPolicyWidget extends StatelessWidget {
  const PrivacyPolicyWidget({
    super.key,
  });

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
                onPressed: () {},
                icon: Icon(Icons.check_circle, color: Colors.green),
              ),
              SizedBox(width: 5),
              Text(
                'Я согласен(а) c условиями',
                style: mediumText,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 58),
          child: Container(
            width: 280,
            height: 30,
            child: Text(
              'политики конфиденциальности',
              style: TextStyle(
                  fontSize: 17, color: Colors.blue, fontFamily: 'Nunito'),
            ),
          ),
        ),
      ],
    );
  }
}
