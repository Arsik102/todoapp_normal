import 'package:flutter/material.dart';
import 'package:todoapp_normal/constants/colors.dart';

import 'widgets/input_container_widget.dart';
import 'widgets/login_button_widget.dart';
import 'widgets/new_password_widget.dart';
import 'widgets/new_user_button_widget.dart';
import 'widgets/welcome_text_widget.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backMain,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WelcomeTextWidget(welcomeText: 'Добро пожаловать'),
              SizedBox(height: 70),
              InputContainerWidget(texthint: 'Email или телефон'),
              SizedBox(height: 10),
              InputContainerWidget(texthint: 'Пароль'),
              SizedBox(height: 50),
              NewPasswordWidget(),
              SizedBox(height: 120),
              NewUserButton(),
              SizedBox(height: 70),
              LogInButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
