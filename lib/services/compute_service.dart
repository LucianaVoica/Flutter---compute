import '../common/operation_enum.dart';

double? result;

double compute(Operation operation, String controller1, String controller2) {
  switch (operation) {
    case Operation.SUM:
      result = double.tryParse(controller1)! + double.tryParse(controller2)!;
      break;
    case Operation.DIF:
      result = double.tryParse(controller1)! - double.tryParse(controller2)!;
      break;
    case Operation.MUL:
      result = double.tryParse(controller1)! * double.tryParse(controller2)!;
      break;
    case Operation.DIV:
      result = double.tryParse(controller1)! / double.tryParse(controller2)!;
      break;
  }
  return result!;
}
