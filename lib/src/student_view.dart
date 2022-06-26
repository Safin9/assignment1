import 'package:assignment1/mock/class.dart';
import 'package:assignment1/mock/studetns_info.dart';
import 'package:assignment1/src/profile.dart';
import 'package:flutter/material.dart';

class StudentView extends StatelessWidget {
  const StudentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('WeCode for View')),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(bottom: 150),
                itemCount: students.length,
                itemBuilder: ((context, index) {
                  List<StudentModel> student = students.map(
                    (e) {
                      return StudentModel.fromMap(e);
                    },
                  ).toList();

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 300,
                      child: SizedBox(
                        height: 300,
                        child: Stack(
                          children: [
                            Positioned(
                              child: SizedBox(
                                  width: double.infinity,
                                  height: 250,
                                  child: Image.network(
                                    students[index]['image'],
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Positioned(
                              bottom: 25,
                              right: 110,
                              left: 110,
                              child: GestureDetector(
                                onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => Profile(
                                      student: student[index],
                                    ),
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[400],
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                  ),
                                  height: 50,
                                  child: Center(
                                    child: Text(
                                      student[index].firstName,
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 24),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
