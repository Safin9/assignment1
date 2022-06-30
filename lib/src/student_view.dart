import 'package:assignment1/mock/cities.dart';
import 'package:assignment1/mock/class_for_cities.dart';
import 'package:assignment1/src/profile.dart';
import 'package:flutter/material.dart';

class StudentView extends StatelessWidget {
  const StudentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<KurdishCities> city = cities.map(
      (e) {
        return KurdishCities.fromMap(e);
      },
    ).toList();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('WeCode for View')),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(bottom: 150),
                itemCount: city.length,
                itemBuilder: ((context, index) {
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
                                    city[index].image ??
                                        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/City_of_Duhok.jpg/800px-City_of_Duhok.jpg",
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
                                      city: city[index],
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
                                      city[index].name,
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
