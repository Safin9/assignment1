import 'package:assignment1/mock/studetns_info.dart';
import 'package:assignment1/src/profile.dart';
import 'package:flutter/material.dart';

class StudentView extends StatelessWidget {
  const StudentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('Student View')),
          body: Stack(
            children: [
              Expanded(
                  child: ListView.builder(
                      padding: const EdgeInsets.only(bottom: 150),
                      itemCount: students.length,
                      itemBuilder: ((context, index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              elevation: 8,
                              child: ListTile(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: ((context) =>
                                          Profile(ind: index))));
                                },
                                trailing: const Icon(Icons.arrow_forward),
                                leading: ClipOval(
                                    child: Hero(
                                  tag: 'profile',
                                  child: Image.network(
                                    students[index]['image'],
                                    fit: BoxFit.cover,
                                  ),
                                )),
                                title: Text(
                                  students[index]['first_name'],
                                ),
                                subtitle: Text(students[index]['email']),
                              ),
                            ),
                          )))),
              Positioned(
                  bottom: 35,
                  left: 30,
                  right: 30,
                  child: Card(
                      elevation: 30,
                      child: Container(
                          height: 100, width: 200, color: Colors.white)))
            ],
          )),
    );
  }
}
