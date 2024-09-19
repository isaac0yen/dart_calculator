import 'dart:io';

import 'package:calculator/calculator.dart' as calculator;

void main() {
  var calc = calculator.Calculator();
  print('Enter first number:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter second number:');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Enter operation (+, -, *, /):');
  String operation = stdin.readLineSync()!;

  switch (operation) {
    case '+':
      print(calc.add(num1, num2));
      break;
    case '-':
      print(calc.subtract(num1, num2));
      break;
    case '*':
      print(calc.multiply(num1, num2));
      break;
    case '/':
      try {
        print(calc.divide(num1, num2));
      } catch (e) {
        print(e);
      }
      break;
    default:
      print('Invalid operation');
  }
}
