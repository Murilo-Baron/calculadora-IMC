import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Acima do peso';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'abaixo do peso';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Você está acima do seu peso normal. Tente exercitar mais.';
    } else if (_bmi >= 18.5) {
      return 'Está no peso padrão, parabéns!!';
    } else {
      return 'você está bem abaixo do peso, tente comer mais';
    }
  }
}
