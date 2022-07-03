import 'package:flutter/material.dart';
import './pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(31, 31, 31, 1.0),
      ),
      home: HomePage(),
    );
  }
}
