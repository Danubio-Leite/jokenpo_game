import 'dart:math';
import 'package:flutter/material.dart';

class Game2Page extends StatefulWidget {
  const Game2Page({Key? key}) : super(key: key);

  @override
  State<Game2Page> createState() => _Game2PageState();
}

class _Game2PageState extends State<Game2Page> {
  List options = ["rock", "paper", "scissor"];
  String _message = "Make a choice!";
  String _imagePathCpu = "images/white.png";
  String _imagePathPlayer = "images/white.png";

  void _play(String choice) {
    int i = Random().nextInt(options.length);
    String randomChoice = options[i];
    this._imagePathCpu = "images/" + randomChoice + ".png";
    this._imagePathPlayer = "images/" + choice + ".png";

    if ((choice == "rock" && randomChoice == "scissor") ||
        (choice == "paper" && randomChoice == "rock") ||
        (choice == "scissor" && randomChoice == "paper")) {
      //usario venceu
      setState(() {
        this._message = "Player 01 wins!";
      });
    } else if ((choice == "rock" && randomChoice == "paper") ||
        (choice == "paper" && randomChoice == "scissor") ||
        (choice == "scissor" && randomChoice == "rock")) {
      //usuario perdeu
      setState(() {
        this._message = "Player 02 wins!";
      });
    } else {
      //empate
      setState(() {
        this._message = "Draw!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(200, 82, 96, 1),
      appBar: AppBar(
        title: Text("Jokenpo"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () => _play("rock"),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: RotatedBox(
                        quarterTurns: 2,
                        child: Image.asset(
                          'images/rock.png',
                          height: 100,
                        ),
                      ),
                    )),
                GestureDetector(
                    onTap: () => _play("paper"),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: RotatedBox(
                        quarterTurns: 2,
                        child: Image.asset(
                          'images/paper.png',
                          height: 100,
                        ),
                      ),
                    )),
                GestureDetector(
                    onTap: () => _play("scissor"),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: RotatedBox(
                        quarterTurns: 2,
                        child: Image.asset(
                          'images/scissor.png',
                          height: 100,
                        ),
                      ),
                    )),
              ],
            ),
            //Center(child: Text("Score")),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                  ),
                  child: Center(child: Image.asset(_imagePathCpu))),
            ),
            Text(
              _message,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                  ),
                  child: Center(child: Image.asset(_imagePathPlayer))),
            ),
            //row do player 01
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () => _play("rock"),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/rock.png',
                        height: 100,
                      ),
                    )),
                GestureDetector(
                    onTap: () => _play("paper"),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/paper.png',
                        height: 100,
                      ),
                    )),
                GestureDetector(
                    onTap: () => _play("scissor"),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/scissor.png',
                        height: 100,
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
