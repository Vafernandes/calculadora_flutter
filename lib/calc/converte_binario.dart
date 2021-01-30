import 'dart:math';

class ConverteBinario {
  static ConverteBinario instanciaConverterBinario = ConverteBinario();

  List<String> _comandos = [];
  int valor = 0;

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
