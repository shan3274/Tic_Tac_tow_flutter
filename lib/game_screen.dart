import 'package:flutter/material.dart';

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
        btnData = [" ", " ", " ", " ", " ", " ", " ", " ", " "];

        wintext = "Completed";
      } else if (btnData[0] == "X" && btnData[3] == "X" && btnData[6] == "X" ||
          btnData[0] == "O" && btnData[3] == "O" && btnData[6] == "O" ||
          btnData[1] == "X" && btnData[4] == "X" && btnData[7] == "X" ||
          btnData[1] == "O" && btnData[4] == "O" && btnData[7] == "O" ||
          btnData[2] == "X" && btnData[5] == "X" && btnData[8] == "X" ||
          btnData[2] == "O" && btnData[5] == "O" && btnData[8] == "O") {
        btnData = [" ", " ", " ", " ", " ", " ", " ", " ", " "];

        wintext = "Completed";
      } else if (btnData[3] == "X" && btnData[4] == "X" && btnData[5] == "X" ||
          btnData[3] == "O" && btnData[4] == "O" && btnData[5] == "O" ||
          btnData[6] == "X" && btnData[7] == "X" && btnData[8] == "X" ||
          btnData[6] == "O" && btnData[7] == "O" && btnData[8] == "O") {
        btnData = [" ", " ", " ", " ", " ", " ", " ", " ", " "];

        wintext = "Completed";
      }
    });
  }
  

  @override
  Widget build(context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            const Text(
              "Play O X",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor:
                                const Color.fromARGB(255, 255, 255, 255),
                            backgroundColor:
                                const Color.fromARGB(255, 196, 87, 233),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: btnData[0] == ""
                            ? () {
                                setState(() {
                                  if (inc > 8) inc = 0;

                                  btnData[0] = data[inc];
                                  inc++;
                                  win();
                                });
                              }
                            : null,
                        child: Text(btnData[0])),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor:
                                const Color.fromARGB(255, 255, 255, 255),
                            backgroundColor:
                                const Color.fromARGB(255, 196, 87, 233),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: btnData[1] == ""
                            ? () {
                                setState(() {
                                  if (inc > 8) inc = 0;

                                  btnData[1] = data[inc];
                                  inc++;
                                  win();
                                });
                              }
                            : null,
                        child: Text(btnData[1])),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor:
                                const Color.fromARGB(255, 255, 255, 255),
                            backgroundColor:
                                const Color.fromARGB(255, 196, 87, 233),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: btnData[2] == ""
                            ? () {
                                setState(() {
                                  if (inc > 8) inc = 0;

                                  btnData[2] = data[inc];
                                  inc++;
                                  win();
                                });
                              }
                            : null,
                        child: Text(btnData[2])),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor:
                                const Color.fromARGB(255, 255, 255, 255),
                            backgroundColor:
                                const Color.fromARGB(255, 196, 87, 233),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: btnData[3] == ""
                            ? () {
                                setState(() {
                                  if (inc > 8) inc = 0;

                                  btnData[3] = data[inc];
                                  inc++;
                                  win();
                                });
                              }
                            : null,
                        child: Text(btnData[3])),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor:
                                const Color.fromARGB(255, 255, 255, 255),
                            backgroundColor:
                                const Color.fromARGB(255, 196, 87, 233),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: btnData[4] == ""
                            ? () {
                                setState(() {
                                  if (inc > 8) inc = 0;

                                  btnData[4] = data[inc];
                                  inc++;
                                  win();
                                });
                              }
                            : null,
                        child: Text(btnData[4])),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor:
                                const Color.fromARGB(255, 255, 255, 255),
                            backgroundColor:
                                const Color.fromARGB(255, 196, 87, 233),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: btnData[5] == ""
                            ? () {
                                setState(() {
                                  if (inc > 8) inc = 0;

                                  btnData[5] = data[inc];
                                  inc++;
                                  win();
                                });
                              }
                            : null,
                        child: Text(btnData[5])),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor:
                                const Color.fromARGB(255, 255, 255, 255),
                            backgroundColor:
                                const Color.fromARGB(255, 196, 87, 233),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: btnData[6] == ""
                            ? () {
                                setState(() {
                                  if (inc > 8) inc = 0;

                                  btnData[6] = data[inc];
                                  inc++;
                                  win();
                                });
                              }
                            : null,
                        child: Text(btnData[6])),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor:
                                const Color.fromARGB(255, 255, 255, 255),
                            backgroundColor:
                                const Color.fromARGB(255, 196, 87, 233),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: btnData[7] == ""
                            ? () {
                                setState(() {
                                  if (inc > 8) inc = 0;

                                  btnData[7] = data[inc];
                                  inc++;
                                  win();
                                });
                              }
                            : null,
                        child: Text(btnData[7])),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor:
                                const Color.fromARGB(255, 255, 255, 255),
                            backgroundColor:
                                const Color.fromARGB(255, 196, 87, 233),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: btnData[8] == ""
                            ? () {
                                setState(() {
                                  if (inc > 8) inc = 0;

                                  btnData[8] = data[inc];
                                  inc++;
                                  win();
                                });
                              }
                            : null,
                        child: Text(btnData[8])),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
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
            Text(wintext)
          ]),
        ),
      ),
    );
  }
}
