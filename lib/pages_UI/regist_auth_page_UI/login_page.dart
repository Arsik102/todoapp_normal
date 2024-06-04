import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todoapp_normal/constants/colors.dart';
import 'package:todoapp_normal/pages_UI/regist_auth_page_UI/widgets/helper_widgets/helper_widgets.dart';

import 'widgets/input_container_widget.dart';
import 'widgets/login_button_widget.dart';
import 'widgets/new_user_button_widget.dart';
import 'widgets/welcome_text_widget.dart';

class LogInPage extends StatefulWidget {
  // routeToLoginPage
  final void Function()? logup;
  const LogInPage({super.key, required this.logup});
  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  // text controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // login method
  void login() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    // try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);

      // pop loading circle
      if (context.mounted) Navigator.pop(context);
    }
    // display any errors
    on FirebaseAuthException catch (e) {
      // pop loading circle
      Navigator.pop(context);
      displayMessageToUser(e.code, context);
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
              const SizedBox(height: 70),
              InputContainerWidget(
                  hintText: 'Email',
                  obscureText: false,
                  controller: emailController),
              const SizedBox(height: 10),
              InputContainerWidget(
                  hintText: 'Пароль',
                  obscureText: true,
                  controller: passwordController),
              const SizedBox(height: 170),
              NewUserButton(
                text1: 'Создать новый ',
                text2: 'аккаунт?',
                onTap: widget.logup,
              ),
              const SizedBox(height: 70),
              LogInButtonWidget(
                text: 'Войти',
                onPressed: login,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
