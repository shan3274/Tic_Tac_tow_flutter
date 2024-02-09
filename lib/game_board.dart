import 'package:flutter/material.dart';
import 'package:tic_tac_toc/e_button.dart';

class GameBoard extends StatelessWidget {
  const GameBoard(
      {super.key,
      required this.btnData,
      required this.pressed,
      required this.btnindex});
  final List<String> btnData;
  final List<int> btnindex;
  final void Function(int num) pressed;

  @override
  Widget build(context) {
    return SizedBox(
      height: 500,
      child: GridView.count(
        crossAxisCount: 3,
        children: [
          ...btnindex.map((item) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: EButton(
                  pressed: () {
                    pressed(item);
                  },
                  num: btnData[item],
                  isPressed: btnData[item] == ""),
            );
          })
        ],
      ),
    );
  }
}
