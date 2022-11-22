import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My 1st App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: myAppScreen(),
    );
  }
}

class myAppScreen extends StatefulWidget {
  @override
  State<myAppScreen> createState() => _myAppScreenState();
}

class _myAppScreenState extends State<myAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(child: Text('Welcome to my 1st App!')),
      ),
    );
  }
}
