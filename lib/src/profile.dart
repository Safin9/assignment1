import 'package:assignment1/mock/studetns_info.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  int? ind;
  Profile({Key? key, required this.ind}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(students[ind!]['first_name']),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              width: 400,
              child: Image.network(
                students[ind!]['image'],
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    students[ind!]['first_name'],
                    style: const TextStyle(fontSize: 25),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                children: [Text(students[ind!]['description'])],
              ),
            )
          ],
        ),
      ),
    );
  }
}
