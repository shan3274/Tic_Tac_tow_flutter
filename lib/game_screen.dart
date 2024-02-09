import 'package:flutter/material.dart';
import 'package:tic_tac_toc/game_board.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() {
    return _GameScreen();
  }
}

class _GameScreen extends State<GameScreen> {
  var data = ['O', 'X', 'O', 'X', 'O', 'X', 'O', 'X', 'O'];
  var btnData = ["", "", "", "", "", "", "", "", ""];
  var btnnum = [0, 1, 2, 3, 4, 5, 6, 7, 8];
  var inc = 0;

  var wintext = "";

  void win() {
    setState(() {
      if (btnData[0] == "X" && btnData[1] == "X" && btnData[2] == "X" ||
          btnData[0] == "O" && btnData[1] == "O" && btnData[2] == "O" ||
          btnData[0] == "X" && btnData[4] == "X" && btnData[8] == "X" ||
          btnData[0] == "O" && btnData[4] == "O" && btnData[8] == "O" ||
          btnData[2] == "X" && btnData[4] == "X" && btnData[6] == "X" ||
          btnData[2] == "O" && btnData[4] == "O" && btnData[6] == "O") {
        for (var i = 0; i < btnData.length; i++) {
          if (btnData[i] == "") {
            btnData[i] = " ";
          }
        }

        wintext = "Completed";
      } else if (btnData[0] == "X" && btnData[3] == "X" && btnData[6] == "X" ||
          btnData[0] == "O" && btnData[3] == "O" && btnData[6] == "O" ||
          btnData[1] == "X" && btnData[4] == "X" && btnData[7] == "X" ||
          btnData[1] == "O" && btnData[4] == "O" && btnData[7] == "O" ||
          btnData[2] == "X" && btnData[5] == "X" && btnData[8] == "X" ||
          btnData[2] == "O" && btnData[5] == "O" && btnData[8] == "O") {
        for (var i = 0; i < btnData.length; i++) {
          if (btnData[i] == "") {
            btnData[i] = " ";
          }
        }

        wintext = "Completed";
      } else if (btnData[3] == "X" && btnData[4] == "X" && btnData[5] == "X" ||
          btnData[3] == "O" && btnData[4] == "O" && btnData[5] == "O" ||
          btnData[6] == "X" && btnData[7] == "X" && btnData[8] == "X" ||
          btnData[6] == "O" && btnData[7] == "O" && btnData[8] == "O") {
        for (var i = 0; i < btnData.length; i++) {
          if (btnData[i] == "") {
            btnData[i] = " ";
          }
        }

        wintext = "Completed";
      }
    });
  }

  void pressed(int num) {
    setState(() {
      if (inc > 8) inc = 0;

      btnData[num] = data[inc];
      inc++;
      win();
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Play O X",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              GameBoard(btnData: btnData, pressed: pressed, btnindex: btnnum),
              Text(wintext),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: const Color.fromARGB(255, 249, 5, 58),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: inc == 0
                    ? null
                    : () {
                        setState(() {
                          inc = 0;
                          btnData = ["", "", "", "", "", "", "", "", ""];
                          wintext = "";
                        });
                      },
                label: const Text("Restart"),
                icon: const Icon(Icons.restart_alt),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: Color.fromARGB(255, 5, 168, 249),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  icon: const Icon(Icons.home),
                  label: const Text("Home"))
            ],
          ),
        ),
      ),
    );
  }
}
