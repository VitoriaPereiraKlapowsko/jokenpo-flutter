import 'package:flutter/material.dart';
import 'package:jokenpo/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Jogo Jokenpo'),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
      ),
    ),
  );
}
