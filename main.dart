import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('AppBar')),
        body: Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey,
            ),
            child: Column(
              children: [
                Container(
                  height: 75,
                  width: 400,
                  padding: EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.account_balance, size: 40,),
                      SizedBox(width: 20),
                      Text(
                        'Balance',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 75,
                  width: 400,
                  padding: EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.add_call, size: 40,),
                      SizedBox(width: 20),
                      Text(
                        'Call',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 75,
                  width: 400,
                  padding: EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.add_a_photo, size: 40,),
                      SizedBox(width: 20),
                      Text(
                        'Photo',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 5,),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuh7Zzsh8Ijm05WU1x5e4KCw07D2mp_xBizw&s",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}
