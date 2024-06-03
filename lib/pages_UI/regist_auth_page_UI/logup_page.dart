import 'package:flutter/material.dart';
import 'package:todoapp_normal/constants/colors.dart';

import 'widgets/input_container_widget.dart';
import 'widgets/privacy_policy_widget.dart';
import 'widgets/regist_button_widget.dart';
import 'widgets/welcome_text_widget.dart';
import 'widgets/logup_button_widget.dart';

class LogUpPage extends StatefulWidget {
  const LogUpPage({super.key});

  @override
  State<LogUpPage> createState() => _LogUpPageState();
}

class _LogUpPageState extends State<LogUpPage> {
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
              SizedBox(height: 40),
              InputContainerWidget(texthint: 'Имя'),
              SizedBox(height: 10),
              InputContainerWidget(texthint: '+7'),
              SizedBox(height: 10),
              InputContainerWidget(texthint: 'Email'),
              SizedBox(height: 10),
              InputContainerWidget(texthint: 'Пароль'),
              SizedBox(height: 30),
              PrivacyPolicyWidget(),
              SizedBox(height: 80),
              RegistButtonWidget(),
              SizedBox(height: 70),
              LogUpButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
