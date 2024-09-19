import 'package:calculator/calculator.dart' as calculator;
import 'package:test/test.dart';

void main() {
  var calc = calculator.Calculator();
  
  test('Calculate add', () {
    expect(calc.add(1, 2), 3);
    expect(calc.add(-1, 1), 0);
    expect(calc.add(0.1, 0.2), closeTo(0.3, 1e-10));
  });

  test('Calculate subtract', () {
    expect(calc.subtract(1, 2), -1);
    expect(calc.subtract(5, 3), 2);
    expect(calc.subtract(-1, -1), 0);
  });

  test('Calculate multiply', () {
    expect(calc.multiply(2, 3), 6);
    expect(calc.multiply(-2, 4), -8);
    expect(calc.multiply(1.5, 2), 3);
  });

  test('Calculate divide', () {
    expect(calc.divide(6, 2), 3);
    expect(calc.divide(5, 2), 2.5);
    expect(calc.divide(-10, 5), -2);
    expect(() => calc.divide(1, 0), throwsA(isA<ArgumentError>()));
  });

  test('Tricky calculations', () {
    expect(calc.add(0.1, 0.2), isNot(0.3));
    expect(calc.multiply(0.1, 0.1), closeTo(0.01, 1e-10));
    expect(calc.divide(1, 3), closeTo(0.3333333333, 1e-10));
  });
}
