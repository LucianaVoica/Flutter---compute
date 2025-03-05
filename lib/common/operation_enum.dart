// ignore_for_file: constant_identifier_names

enum Operation { SUM, DIF, MUL, DIV }

extension OperationExtension on Operation {
  String get operationType {
    switch (this) {
      case Operation.SUM:
        return 'Suma';
      case Operation.DIF:
        return 'Diferencia';
      case Operation.MUL:
        return 'Multiplicación';
      case Operation.DIV:
        return 'División';
    }
  }
}
