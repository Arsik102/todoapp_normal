import 'package:flutter/material.dart';
import 'package:todoapp_normal/constants/colors.dart';
import 'package:todoapp_normal/constants/fonts.dart';

class NewTask extends StatelessWidget {
  NewTask({super.key});
  final TextEditingController controllerNewTask = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backPers,
      appBar: AppBar(
        backgroundColor: backPers,
        title: const Text(
          'Новая задача',
          style: laregeText,
        ),
      ),
      body: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 300,
              height: 50,
              color: backContAuth,
              child: TextField(
                controller: controllerNewTask,
                showCursor: false,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  contentPadding: EdgeInsets.all(10),
                  hintText: 'Что будем делать сегодня?',
                  hintStyle: smallText,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    Navigator.pop(context, controllerNewTask);
                  },
                ),
                const SizedBox(width: 100),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    controllerNewTask.clear();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
