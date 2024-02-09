import 'package:flutter/material.dart';

class EButton extends StatelessWidget {
  const EButton(
      {super.key,
      required this.pressed,
      required this.num,
      required this.isPressed});
  final String num;
  final bool isPressed;
  final void Function() pressed;
  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
              backgroundColor: const Color.fromARGB(255, 209, 209, 209),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: isPressed ? pressed : null,
          child: Text(
            num,
            style: const TextStyle(fontSize: 25, color: Colors.black),
          )),
    );
  }
}
