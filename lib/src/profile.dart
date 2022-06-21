import 'package:assignment1/mock/studetns_info.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  int? ind;
  Profile({Key? key, required this.ind}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipOval(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Hero(
                      tag: 'profile',
                      child: Image.network(students[ind!]['image'])),
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
                      width: 10,
                    ),
                    Text(
                      students[ind!]['last_name'],
                      style: const TextStyle(fontSize: 25),
                    ),
                  ],
                ),
              ),
              Text(
                students[ind!]['gender'],
                style: const TextStyle(fontSize: 20),
              ),
              Expanded(
                  child: GridView.count(
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    child: Image.network(
                      students[ind!]['image'],
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    child: Image.network(
                      students[ind!]['image'],
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    child: Image.network(
                      students[ind!]['image'],
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    child: Image.network(
                      students[ind!]['image'],
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    child: Image.network(
                      students[ind!]['image'],
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    child: Image.network(
                      students[ind!]['image'],
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
