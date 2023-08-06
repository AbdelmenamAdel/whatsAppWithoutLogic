import 'package:flutter/material.dart';
import 'package:whats_app/screens/home_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          LayoutScreen(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
