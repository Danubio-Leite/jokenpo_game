import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Less Code Less Bugs'),
      ),
      backgroundColor: Color.fromRGBO(200, 82, 96, 1),
      body: Container(
        child: Column(
          children: [
            Center(
              child: Image.asset('images/sloth.png'),
            ),
            Text('This function is not yet available. Maybe tomorrow...'),
          ],
        ),
      ),
    );
  }
}
