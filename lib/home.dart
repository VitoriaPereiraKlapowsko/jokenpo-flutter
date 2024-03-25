import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'JOKENPO'),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String resultado = '';
  String opcaoUsuario = '';
  String opcaoComputador = '';

  void jogandoPartida(int jogadaUsuario) {
    final int jogadaComputador = _escolhaComputador();
    final resultadoFinal = _resultadoFinal(jogadaUsuario, jogadaComputador);

    final jogadaUsuarioTexto = _chancesJogada(jogadaUsuario);
    final jogadaComputadorTexto = _chancesJogada(jogadaComputador);

    setState(() {
      resultado = resultadoFinal;
      opcaoUsuario = 'Você escolheu $jogadaUsuarioTexto';
      opcaoComputador = 'Computador escolheu $jogadaComputadorTexto';
    });
  }

  int _escolhaComputador() {
    return Random().nextInt(3);
  }

  String _resultadoFinal(int jogadaUsuario, int jogadaComputador) {
    if (jogadaUsuario == jogadaComputador) {
      return 'Ops... Empate!';
    } else if ((jogadaUsuario == 0 && jogadaComputador == 2) ||
        (jogadaUsuario == 1 && jogadaComputador == 0) ||
        (jogadaUsuario == 2 && jogadaComputador == 1)) {
      return 'Parabéns! Você venceu :)';
    } else {
      return 'Computador venceu :(';
    }
  }

  String _chancesJogada(int jogada) {
    switch (jogada) {
      case 0:
        return ': Pedra';
      case 1:
        return ': Papel';
      case 2:
        return ': Tesoura';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 194, 177, 29),
        title: Text(
          'JOKENPO',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => jogandoPartida(0),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.zero,
                  ),
                  child: Image.asset(
                    'assets/images/pedra.png',
                    height: 100,
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => jogandoPartida(1),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.zero,
                  ),
                  child: Image.asset(
                    'assets/images/papel.png',
                    height: 100,
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => jogandoPartida(2),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.zero,
                  ),
                  child: Image.asset(
                    'assets/images/tesoura.png',
                    height: 100,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              opcaoUsuario,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              opcaoComputador,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              resultado,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
