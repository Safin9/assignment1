import 'package:flutter/material.dart';

class Kurdish extends StatelessWidget {
  const Kurdish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: double.infinity,
              height: 300,
              child: ClipOval(
                child: Image.network(
                    'https://thumbs.dreamstime.com/z/kurdistan-kurdish-flag-kurdistan-kurdish-flag-pure-vector-art-115227019.jpg'),
              ),
            ),
            const Text(
              'HELLO KURDISTAN!',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
