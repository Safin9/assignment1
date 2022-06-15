import 'package:flutter/material.dart';

void main() {
  runApp(const Kurdish());
}

class Kurdish extends StatelessWidget {
  const Kurdish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text('HELLO KURDISTAN!')),
      ),
    );
  }
}
