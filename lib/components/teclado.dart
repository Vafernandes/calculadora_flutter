import 'package:flutter/material.dart';
import 'package:flutter_application/components/botao.dart';
import 'package:flutter_application/components/button_row.dart';

class Teclado extends StatelessWidget {
  final Function(String) valorPressionado;

  const Teclado({Key key, @required this.valorPressionado}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ButtonRow(
                botoes: [
                  Botao(tituloBotao: 'C', valorPressionado: valorPressionado),
                  Botao(tituloBotao: 'BIN', valorPressionado: valorPressionado),
                  Botao(tituloBotao: '%', valorPressionado: valorPressionado),
                  Botao(tituloBotao: '/', valorPressionado: valorPressionado),
                ],
              ),
              ButtonRow(
                botoes: [
                  Botao(tituloBotao: '7', valorPressionado: valorPressionado),
                  Botao(tituloBotao: '8', valorPressionado: valorPressionado),
                  Botao(tituloBotao: '9', valorPressionado: valorPressionado),
                  Botao(tituloBotao: 'X', valorPressionado: valorPressionado),
                ],
              ),
              ButtonRow(
                botoes: [
                  Botao(tituloBotao: '4', valorPressionado: valorPressionado),
                  Botao(tituloBotao: '5', valorPressionado: valorPressionado),
                  Botao(tituloBotao: '6', valorPressionado: valorPressionado),
                  Botao(tituloBotao: '-', valorPressionado: valorPressionado),
                ],
              ),
              ButtonRow(
                botoes: [
                  Botao(tituloBotao: '1', valorPressionado: valorPressionado),
                  Botao(tituloBotao: '2', valorPressionado: valorPressionado),
                  Botao(tituloBotao: '3', valorPressionado: valorPressionado),
                  Botao(tituloBotao: '+', valorPressionado: valorPressionado),
                ],
              ),
              ButtonRow(
                botoes: [
                  Botao(tituloBotao: '0', valorPressionado: valorPressionado),
                  Botao(tituloBotao: '=', valorPressionado: valorPressionado),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
