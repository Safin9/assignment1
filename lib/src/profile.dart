import 'package:assignment1/mock/class_for_cities.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key, required this.city}) : super(key: key);
  // final StudentModel student;
  final KurdishCities city;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 62.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(children: [
                SizedBox(
                  height: 300,
                  width: 400,
                  child: Image.network(
                    city.image ??
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/City_of_Duhok.jpg/800px-City_of_Duhok.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    top: 20,
                    left: 10,
                    child: FloatingActionButton(
                      elevation: 6,
                      backgroundColor: Colors.transparent,
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Icon(Icons.arrow_back),
                    )),
              ]),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      city.name,
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
                  children: [Text(city.description)],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
