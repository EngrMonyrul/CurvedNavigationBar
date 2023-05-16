import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Example',
      home: MyApp1(),
    );
  }
}

class MyApp1 extends StatefulWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  State<MyApp1> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
  List names = const [
    Center(
      child: Text(
        'Example 1',
        style: TextStyle(
          fontSize: 50,
        ),
      ),
    ),
    Center(
      child: Text(
        'Example 2',
        style: TextStyle(
            fontSize: 50,
        ),
      ),
    ),
    Center(
      child: Text(
        'Example 3',
        style: TextStyle(
            fontSize: 50,
        ),
      ),
    ),
    Center(
      child: Text(
        'Example 4',
        style: TextStyle(
            fontSize: 50,
        ),
      ),
    ),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: names[index],
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: const Duration(milliseconds: 300),
        backgroundColor: Colors.transparent,
        color: Colors.blueAccent,
        onTap: (value){
          setState(() {
            index = value;
          });
        },
        items: const [
          Icon(Icons.home),
          Icon(Icons.favorite),
          Icon(Icons.mail),
          Icon(Icons.person)
        ],
      ),
    );
  }
}
