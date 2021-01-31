import 'package:flutter/material.dart';

import 'botao.dart';

class ButtonRow extends StatelessWidget {
  final List<Botao> botoes;

  const ButtonRow({Key key, this.botoes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Row(children: botoes),
      ),
    );
  }
}
