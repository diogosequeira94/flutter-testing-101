import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing_101/main.dart';
import 'package:flutter_testing_101/operations_tab.dart';

void main() {
  group('CalculatorApp', () {
    testWidgets('renders four widgets of type TwoDigitOperation',
            (WidgetTester tester) async {
          await tester.pumpWidget(CalculatorApp());
          expect(find.byType(OperationsTab), findsNWidgets(4));
        });

    group('add', () {
      testWidgets('shows result when given two numbers', (WidgetTester tester) async {
        await tester.pumpWidget(CalculatorApp());
        await tester.enterText(find.byKey(Key('textField_top_plus')), '3');
        await tester.enterText(find.byKey(Key('textField_bottom_plus')), '6');
        await tester.pumpAndSettle();
        expect(find.text('is 9.0'), findsOneWidget);
      });
    });
  });
}