import 'package:flutter/material.dart';
import 'components/calculadora.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculadora(),
    );
  }
}
