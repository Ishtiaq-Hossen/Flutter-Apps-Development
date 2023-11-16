import 'Calculator.dart';
import 'dart:io';

main() {
  try {
    num? n1 = num.parse(stdin.readLineSync()!);
    num? n2 = num.parse(stdin.readLineSync()!);
    String? sign = stdin.readLineSync();
    Calculator a = new Calculator(n1, n2, sign);
    switch (a.sign) {
      case == "+":
        print("Addition Result: ${a.add()}");
      case == "-":
        print("Subtract Result: ${a.subtract()}");
      case == "/":
        print("Division Result: ${a.division()}");
      case == "*":
        print("Multiplication Result: ${a.product()}");
      default:
        print("Machine Stops");
    }
  }
  // ignore: deprecated_member_use
  on IOException {
    print("o problem");
  }
  on Exception catch (e) {
    print('Unknown exception: $e');
  } finally {
    print("Pogram finished! ");
  }
}
