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
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.amber),
          ),
        ),
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          tooltip: 'premi qui',
          child: Icon(Icons.circle),
        ),
      ),
    );
  }
}
