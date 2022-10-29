import 'package:flutter/material.dart';
import 'package:jokenpo_game/pages/error.dart';
import 'package:jokenpo_game/pages/game.dart';

import 'game2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(200, 82, 96, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/jokenpo.gif'),
            SizedBox(
              height: 70,
            ),
            SizedBox(
              height: 100,
              width: 250,
              child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GamePage()),
                    );
                  },
                  child: Text('1 Player Game')),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 100,
              width: 250,
              child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ErrorPage()),
                    );
                  },
                  child: Text('2 Players Game')),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 100,
              width: 250,
              child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ErrorPage()),
                    );
                  },
                  child: Text(
                    'Rock, Paper, Scissors, Lizard, Spock',
                    textAlign: TextAlign.center,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
