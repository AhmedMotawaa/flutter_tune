import 'package:flutter/material.dart';
import 'package:flutter_tune/views/homepage.dart';

void main() {
  runApp(const flutter_tune());
}

class flutter_tune extends StatefulWidget {
  const flutter_tune({super.key});

  @override
  State<flutter_tune> createState() => _flutter_tuneState();
}

class _flutter_tuneState extends State<flutter_tune> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      // routes: {
      //   'Homepage' : (context)=> const Homepage(),
      //   'home': (context)=>const Homepage(),
      // },
      // initialRoute: Homepage.routeName,
    );
  }
}
