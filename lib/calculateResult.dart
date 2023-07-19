import 'dart:math';

class calculateResult {
  calculateResult({required this.height, required this.weight});
  final int height;
  final int weight;

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getCategory() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getRemark() {
    if (_bmi >= 25) {
      return 'Try to workout more regularly.';
    } else if (_bmi >= 18.5) {
      return 'Keep it Up.';
    } else {
      return 'You need to put on more weight.';
    }
  }
}
