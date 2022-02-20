import 'package:flutter/material.dart';
import 'package:meme_creator/screens/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meme Creator',
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}
