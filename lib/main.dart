import 'package:flutter/material.dart';
import 'package:flutter_testing_101/calculator.dart';
import 'package:flutter_testing_101/home_page.dart';
import 'package:flutter_testing_101/inherited_widgets/inherited_calculator.dart';

void main() async {
  runApp(
    CalculatorApp(
      calculator: Calculator(),
    ),
  );
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({
    Key key,
    @required this.calculator,
  })  : assert(calculator != null),
        super(key: key);

  final Calculator calculator;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: InheritedCalculator(
        calculator: calculator,
        child: HomePage(),
      ),
    );
  }
}