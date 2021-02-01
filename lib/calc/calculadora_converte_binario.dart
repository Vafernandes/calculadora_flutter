import 'dart:math';

class CalculadoraConverteBinario {
  static CalculadoraConverteBinario instanciaConverterBinario =
      CalculadoraConverteBinario();

  List<String> _comandos = [];
  int valor = 0;

  void diferenciaOperacao() {
    String comandosString = '';
    List<String> op = [];
    String operador;

    for (var comando in _comandos) {
      comandosString += comando;
      if (comando == '+') {
        operador = 'soma';
      } else if (comando == '-') {
        operador = 'subtracao';
      } else if (comando == '/') {
        operador = 'divisao';
      } else if (comando == 'X') {
        operador = 'multiplicacao';
      }
    }

    switch (operador) {
      case 'soma':
        op = comandosString.split('+');
        valor = int.parse(op[0]) + int.parse(op[1]);
        break;
      case 'subtracao':
        op = comandosString.split('-');
        valor = int.parse(op[0]) - int.parse(op[1]);
        break;
      case 'divisao':
        op = comandosString.split('/');
        valor = int.parse(op[0]) ~/ int.parse(op[1]);
        break;
      case 'multiplicacao':
        op = comandosString.split('X');
        valor = int.parse(op[0]) * int.parse(op[1]);
        break;
    }
  }

  List<String> inverterListaComandos(List<String> comandosParametro) {
    List<String> listaComandosInvertida = [];

    for (int i = (comandosParametro.length - 1); i >= 0; i--) {
      listaComandosInvertida.add(comandosParametro[i]);
    }

    return listaComandosInvertida;
  }

  int converterBinParaDecimal() {
    int resultadoConversao = 0;

    List<String> listaInvertida = inverterListaComandos(_comandos);

    for (int i = 0; i < listaInvertida.length; i++) {
      if (int.parse(listaInvertida[i]) == 1) {
        resultadoConversao += int.parse(listaInvertida[i]) * pow(2, i);
      }
    }
    valor = resultadoConversao;
    return resultadoConversao;
  }

  void adicionarElementoNaListaComandos(String comando) {
    _comandos.add(comando);
  }

  void limpar() {
    _comandos = [];
    valor = 0;
  }
}
