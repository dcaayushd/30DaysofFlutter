import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = 'Aayush';
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Center(
        child: Container(
            child: Text('Welcome to $days days of Flutter by $name!')),
      ),
      drawer: MyDrawer(),
    );
  }
}
