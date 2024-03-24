// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 194, 177, 29),
        title: Text(
          'JOKENPO',
          textAlign: TextAlign.center, // Alinha o texto no centro
        ),
        centerTitle: true, // Centralizando o título na AppBar
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                'assets/images/pedra.png',
                height: 100, //Definindo as alturas
                fit: BoxFit.contain, // Ajustando a imagem dentro do contêiner
              ),
            ),
            Expanded(
              child: Image.asset(
                'assets/images/papel.png',
                height: 100, 
                fit: BoxFit.contain, 
              ),
            ),
            Expanded(
              child: Image.asset(
                'assets/images/tesoura.png',
                height: 100, 
                fit: BoxFit.contain, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Container();
}
