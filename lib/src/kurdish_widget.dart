import 'package:flutter/material.dart';

class Kurdish extends StatefulWidget {
  const Kurdish({Key? key}) : super(key: key);

  @override
  State<Kurdish> createState() => _KurdishState();
}

class _KurdishState extends State<Kurdish> {
  String img1 =
      'https://thumbs.dreamstime.com/z/kurdistan-kurdish-flag-kurdistan-kurdish-flag-pure-vector-art-115227019.jpg';
  String img2 =
      'https://www.youngpioneertours.com/wp-content/uploads/2020/09/4.currentkurdistanflag.png';
  String img3 =
      'https://upload.wikimedia.org/wikipedia/commons/5/5d/Flag_of_Kurdistan_2.jpg';
  String? showenImg;

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
                child: (showenImg == null)
                    ? Container(
                        color: Colors.grey[350],
                        child: const Center(
                          child: Text(
                            'Click an Image to show',
                            style: TextStyle(fontSize: 35),
                          ),
                        ),
                      )
                    : Image.network(
                        showenImg!,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showenImg = img1;
                      });
                    },
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.network(img1),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showenImg = img2;
                      });
                    },
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.network(img2),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showenImg = img3;
                      });
                    },
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.network(img3),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
