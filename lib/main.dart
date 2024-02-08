import 'package:flutter/material.dart';
import 'package:tic_tac_toc/game_screen.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tic Tac Toe"),
        leading: const BackButton(),
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 1, 200, 255),
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 255, 8, 210)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Welcome ",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'assests/images/tic-tac-toe.png',
                  width: 200,
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GameScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        foregroundColor:
                            const Color.fromARGB(255, 255, 255, 255),
                        backgroundColor:
                            const Color.fromARGB(255, 196, 87, 233),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    icon: const Icon(Icons.play_arrow),
                    label: const Text("Next Screen"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
