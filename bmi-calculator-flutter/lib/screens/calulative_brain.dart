import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'you have a higher then normal body weight so work out for have a healthy life';
    } else if (_bmi > 18.5) {
      return 'you have a normal body weight .....Good job';
    } else {
      return 'you have lower then normal body weight so work on your body to have a good life style';
    }
  }
}
