import 'package:flutter/gestures.dart';

class Transference {
  final double value;
  final int accountNumber;

  Transference(this.value, this.accountNumber);

  @override
  String toString() {
    // TODO: implement toString
    return "Transferencia{valor: $value, numero da conta: $accountNumber}";
  }
}
