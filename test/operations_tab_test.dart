import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing_101/calculator.dart';
import 'package:flutter_testing_101/operations_tab.dart';

void main() {
  Calculator calculator;

  setUp(() {
    calculator = Calculator();
  });
  group('Operations Tab', () {
    group('Operation.add', () {
      testWidgets('paints 4.0 when adding 3 and 1', (tester) async {
        await tester.pumpWidget(OperationsTab(calculator: null));
      });
    });
  });
}
