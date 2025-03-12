import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercise 1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exercise 1'),
        ),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Text Text',
                      style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    'The snowman stood tall, smiling in the winter chill.',
                    style: TextStyle(fontSize: 20, color: Colors.black54, fontWeight: FontWeight.normal)
                  ),
                  SizedBox(height: 18),
                  Image.network(
                    'https://media.springernature.com/w300/springer-static/image/art%3A10.1038%2Fs41558-018-0332-5/MediaObjects/41558_2018_332_Figa_HTML.png?as=webp',
                    fit: BoxFit.fitWidth,
                    width: 300,
                    height: 300,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  onPressed: () {
                    print('Da nhan nut');
                  },
                  child: Text(
                    'Button',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(300, 50),
                    backgroundColor: Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
