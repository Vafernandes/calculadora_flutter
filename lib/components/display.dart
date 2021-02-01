import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String numeroDigitado;
  final resultado;

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
              padding: const EdgeInsets.all(20),
              child: Text(
                '$numeroDigitado',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w200,
                  fontSize: 60,
                  color: Colors.black26,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                '$resultado',
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w200,
                    fontSize: 90,
                    color: Colors.black54),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
