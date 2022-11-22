import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = 'Aayush';
    return Scaffold(
      appBar: AppBar(
        title: Text('DAY 2'),
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Color(0xFFDFF6FF),
      body: Center(
        child: Container(
            child: Text('Welcome to $days days of Flutter by $name!')),
      ),
      drawer: Drawer(),
    );
  }
}
