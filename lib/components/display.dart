import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String numeroDigitado;
  final int resultado;

  const Display({Key key, this.numeroDigitado, this.resultado})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '$numeroDigitado',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  //fontSize: 30,
                  color: Colors.black26,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '$resultado',
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 50,
                    color: Colors.black54),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
