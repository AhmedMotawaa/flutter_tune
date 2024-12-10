import 'package:flutter/material.dart';
import 'package:flutter_tune/widgets/toneSelector.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 39, 34, 32),
        title: Center(
          child: Text(
            'Flutter Tune',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Expanded(child: Container(child: toneSelector())),
    );
  }
}
