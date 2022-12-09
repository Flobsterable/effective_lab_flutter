// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'heroes_list_screen/heroes_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.teal,
        fontFamily: 'Roboto',
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.black,
        ),
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Center(
          child: HeroesListPage(),
        ),
      ),
    );
  }
}
