import 'package:flutter/material.dart';
import 'package:flutter_application/calc/converte_binario.dart';
import 'package:flutter_application/components/display.dart';
import 'package:flutter_application/components/teclado.dart';
import 'package:flutter_application/controller/dado_display.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final DadoDisplay dadoDisplay = DadoDisplay();
  var valor = 0;
  _onPressed(String comando) {
    setState(() {
      if (comando == 'Clear') {
        dadoDisplay.setValor('');
        valor = 0;
      } else {
        dadoDisplay.alterarValor(comando);
        valor = ConverteBinario.instanciaConverterBinario.valor;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Display(
            numeroDigitado: dadoDisplay.getValor(),
            resultado: valor,
          ),
          Teclado(
            valorPressionado: _onPressed,
          ),
        ],
      ),
    );
  }
}
