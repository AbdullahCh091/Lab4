import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class dice extends StatefulWidget {
  dice({Key? key}) : super(key: key);

  @override
  State<dice> createState() => _diceState();
}

class _diceState extends State<dice> {
  double count = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.green,
                  width: double.infinity,
                  child: IconButton(
                    icon: Image.asset("images/dice$count.png"),
                    onPressed: () {
                      setState(() {
                        count = Random().nextInt(6) + 1;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Task2 extends StatelessWidget {
  const Task2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    width: 200,
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                    width: 200,
                  ),
                  flex: 2,
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    width: 200,
                  ),
                  flex: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    onPressed: null,
                    child: Text('Enabled'),
                  ),
                  color: Colors.blue,
                ),
                Container(
                  child: TextButton(onPressed: null, child: Text('Enabled')),
                ),
                Container(
                  child:
                      IconButton(onPressed: null, icon: Icon(Icons.volume_up)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
