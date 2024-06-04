import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todoapp_normal/constants/colors.dart';

import 'widgets/helper_widgets/helper_widgets.dart';
import 'widgets/input_container_widget.dart';
import 'widgets/privacy_policy_widget.dart';
import 'widgets/regist_button_widget.dart';
import 'widgets/welcome_text_widget.dart';
import 'widgets/logup_button_widget.dart';

class LogUpPage extends StatefulWidget {
  // routeToLoginPage
  final void Function()? login;

  const LogUpPage({super.key, required this.login});

  @override
  State<LogUpPage> createState() => _LogUpPageState();
}

class _LogUpPageState extends State<LogUpPage> {
  // text controllers
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();

  // logup method
  void logup() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    if (passwordController.text != confirmController.text) {
      // pop loading circle
      Navigator.pop(context);

      // show error message to user
      displayMessageToUser('Пароль не совпал', context);
    } else {
      // try creating user
      try {
        UserCredential? userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: emailController.text, password: passwordController.text);

        // pop loading circle
        Navigator.pop(context);
      } on FirebaseAuthException catch (e) {
        // pop loading circle
        Navigator.pop(context);

        // display error message to user
        displayMessageToUser(e.code, context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backMain,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const WelcomeTextWidget(welcomeText: 'Добро пожаловать'),
              const SizedBox(height: 40),
              InputContainerWidget(
                hintText: 'Имя',
                obscureText: false,
                controller: usernameController,
              ),
              const SizedBox(height: 10),
              InputContainerWidget(
                hintText: 'Email',
                obscureText: false,
                controller: emailController,
              ),
              const SizedBox(height: 10),
              InputContainerWidget(
                hintText: 'Пароль',
                obscureText: true,
                controller: passwordController,
              ),
              const SizedBox(height: 10),
              InputContainerWidget(
                hintText: 'Повторно пароль',
                obscureText: true,
                controller: confirmController,
              ),
              const SizedBox(height: 30),
              PrivacyPolicyWidget(
                text1: 'Я согласен(а) c условиями',
                text2: 'политики конфиденциальности',
              ),
              const SizedBox(height: 80),
              RegistButtonWidget(
                text1: 'Уже есть аккаунт? ',
                text2: 'Войти',
                onTap: widget.login,
              ),
              const SizedBox(height: 70),
              LogUpButtonWidget(
                text: 'Зарегистрироваться',
                onPressed: logup,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
