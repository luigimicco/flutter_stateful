import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _circleColor = Colors.amber;

  void _swapColor() {
    setState(() {
      if (_circleColor == Colors.amber) {
        _circleColor = Colors.blueGrey;
      } else {
        _circleColor = Colors.amber;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Un esempio di stateful widget"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: _circleColor),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _swapColor,
          tooltip: 'premi qui',
          child: const Icon(Icons.circle),
        ),
      ),
    );
  }
}
