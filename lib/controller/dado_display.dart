class DadoDisplay {
  String _valor = '';

  alterarValor(String comandoPressionado) {
    _valor += comandoPressionado;
  }

  getValor() {
    return _valor;
  }

  setValor(String valorAlterado) {
    _valor = valorAlterado;
  }
}
