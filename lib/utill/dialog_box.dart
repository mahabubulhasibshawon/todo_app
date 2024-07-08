import 'package:flutter/material.dart';
import 'package:todo_app/utill/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSvae;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onSvae,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Add a new task"),
            ),
            Row(
              children: [
                MyButton(text: "Save", onPressed: onSvae,),
                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
