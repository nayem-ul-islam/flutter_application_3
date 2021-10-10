import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BG Color Changer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Random Color Changer'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var colors = [
    Colors.amber,
    Colors.amberAccent,
    Colors.black,
    Colors.blue,
    Colors.blueAccent,
    Colors.brown,
    Colors.deepOrange,
    Colors.green,
    Colors.orange,
    Colors.red,
    Colors.yellow,
  ];

  var currentColor = Colors.white;

  setRandomColor() {
    var rmd = Random().nextInt(colors.length);
    setState(() {
      currentColor = colors[rmd];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: currentColor,
      child: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          child: ElevatedButton(
            onPressed: setRandomColor,
            child: Text('Change it!'),
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              primary: Colors.black,
              onPrimary: currentColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
