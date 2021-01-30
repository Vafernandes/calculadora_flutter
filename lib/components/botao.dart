import 'package:flutter/material.dart';
import 'package:flutter_application/calc/converte_binario.dart';

class Botao extends StatelessWidget {
  final tituloBotao;
  final Function(String) valorPressionado;

  const Botao(
      {Key key, @required this.tituloBotao, @required this.valorPressionado})
      : super(key: key);

  diferenciaComando() {
    switch (tituloBotao) {
      case 'BIN':
        ConverteBinario.instanciaConverterBinario.converterBinParaDecimal();
        break;
      case 'Clear':
        ConverteBinario.instanciaConverterBinario.limpar();
        break;
      default:
        ConverteBinario.instanciaConverterBinario
            .adicionarElementoNaListaComandos(tituloBotao);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(0.5),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: RaisedButton(
            color: (tituloBotao == 'BIN' || tituloBotao == 'Clear')
                ? Colors.orange[800]
                : Colors.white,
            child: Text(
              tituloBotao,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 32,
              ),
            ),
            onPressed: () {
              diferenciaComando();
              valorPressionado(tituloBotao);
            },
          ),
        ),
      ),
    );
  }
}
