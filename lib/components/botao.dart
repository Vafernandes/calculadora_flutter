import 'package:flutter/material.dart';
import 'package:flutter_application/calc/calculadora_converte_binario.dart';

class Botao extends StatelessWidget {
  final tituloBotao;
  final Function(String) valorPressionado;

  const Botao({
    Key key,
    @required this.tituloBotao,
    @required this.valorPressionado,
  }) : super(key: key);

  void _diferenciaComando(String valorBotao) {
    switch (valorBotao) {
      case 'BIN':
        CalculadoraConverteBinario.instanciaConverterBinario
            .converterBinParaDecimal();
        break;
      case 'C':
        CalculadoraConverteBinario.instanciaConverterBinario.limpar();
        break;
      case '=':
        CalculadoraConverteBinario.instanciaConverterBinario
            .diferenciaOperacao();
        break;
      default:
        CalculadoraConverteBinario.instanciaConverterBinario
            .adicionarElementoNaListaComandos(tituloBotao);
    }
  }

  bool _isCaracterEspecial() {
    return (tituloBotao == 'BIN' ||
            tituloBotao == 'C' ||
            tituloBotao == '%' ||
            tituloBotao == 'X' ||
            tituloBotao == '-' ||
            tituloBotao == '/' ||
            tituloBotao == '+' ||
            tituloBotao == '=')
        ? true
        : false;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 3,
            color: Colors.white,
            child: Text(
              tituloBotao,
              style: TextStyle(
                fontWeight:
                    (_isCaracterEspecial()) ? FontWeight.w400 : FontWeight.w200,
                fontSize: 32,
                color:
                    (_isCaracterEspecial()) ? Colors.orange[800] : Colors.black,
              ),
            ),
            onPressed: () {
              _diferenciaComando(tituloBotao);
              valorPressionado(tituloBotao);
            },
          ),
        ),
      ),
    );
  }
}
