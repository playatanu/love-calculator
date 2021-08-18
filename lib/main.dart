import 'dart:math';
import 'package:scratcher/scratcher.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static var _random = new Random();
  static var _counter = 0;

  // int _counter = 0;

  //double _counter = 50 + 23;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 65, 54),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Love',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 60),
                    ),
                    Lottie.asset('assets/love.json', height: 100, width: 100),
                  ],
                ),
                Text(
                  'Calculator',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50),
                ),
                SizedBox(
                  height: 11,
                ),
                Text(
                  'Get Your Own Love Result Instantly',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '$_counter',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 80),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2.0)),
                      labelText: 'Your Name',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                      ),
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      hintText: '',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      hoverColor: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                  child: TextField(
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2.0)),
                      labelText: 'His/Her Name',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                      ),
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      hintText: '',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      hoverColor: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 65, 54),
                      ),
                      onPressed: () {
                        setState(() {
                          _counter = _random.nextInt(99) + 1;
                        });
                      },
                      child: Text(
                        'CALCULATE',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: Text(
                    'PLAYATANU',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
