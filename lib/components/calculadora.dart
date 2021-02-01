import 'package:flutter/material.dart';
import 'package:flutter_application/calc/calculadora_converte_binario.dart';
import 'package:flutter_application/components/display.dart';
import 'package:flutter_application/components/teclado.dart';
import 'package:flutter_application/controller/dado_display.dart';

class Calculadora extends StatefulWidget {
  @override
  _Calculadora createState() => _Calculadora();
}

class _Calculadora extends State<Calculadora> {
  final DadoDisplay dadoDisplay = DadoDisplay();
  var valor = 0;
  _onPressed(String comando) {
    setState(() {
      if (comando == 'C') {
        dadoDisplay.setValor('');
        valor = 0;
      } else {
        dadoDisplay.alterarValor(comando);
        valor = CalculadoraConverteBinario.instanciaConverterBinario.valor;
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
