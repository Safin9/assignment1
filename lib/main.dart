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
          children: [
            Image.network(
                'https://www.google.com/search?q=kurdistan+flag&source=lnms&tbm=isch&sa=X&ved=2ahUKEwiE8PyxmLL4AhXZRPEDHdwcAh4Q_AUoAXoECAIQAw&biw=1396&bih=694&dpr=1.38#imgrc=toQzspaOtnOkyM'),
            const Center(child: Text('HELLO KURDISTAN!')),
          ],
        ),
      ),
    );
  }
}
