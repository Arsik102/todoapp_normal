import 'package:flutter/material.dart';
import 'package:todoapp_normal/constants/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backPers,
      appBar: AppBar(
        backgroundColor: backPersAppBar,
        title: Text(
          'Список дел',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.login,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Text('Work'),
              SizedBox(
                height: 20,
              ),
              Text('Swim'),
              SizedBox(
                height: 20,
              ),
              Text('Gym'),
            ],
          ),
        ],
      ),
    );
  }
}
