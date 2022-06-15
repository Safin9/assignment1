import 'package:flutter/material.dart';

void main() {
  runApp(const Kurdish());
}

class Kurdish extends StatelessWidget {
  const Kurdish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: const [
            Center(child: Text('HELLO KURDISTAN!')),
          ],
        ),
      ),
    );
  }
}
