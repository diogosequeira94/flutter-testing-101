import 'package:flutter_testing_101/calculator.dart';
import 'package:test/test.dart';
import 'dart:ui';

/// This class is used as an example for Jorge Coca's Testing Tutorial
/// For more info about the comment sections,
/// please check README.MD


void main(){

  Calculator calculator;

  setUp((){
    calculator = Calculator();
  });

  group('calculator', () {
    test('the calculator returns 4 when adding 2 and 2', (){
      // 1st step: setup -> create the calculator object
      final calculator = Calculator();
      // 2nd step: side effects -> collect the result you want to test
      final result = calculator.add(2, 2);
      //3rd step: expectations -> compare the result against an expected value
      expect(result, 4);
      //A test without expectation is a bad practice!
    });

    //Testing with Matcher
    test('Calculator creates a non-null object', (){
      expect(Calculator(), isNotNull);
    });

    //Testing with TypeMatcher
    test('The calculator returns a double when adding 2 and 2', () {
      final result = calculator.add(2, 2);
      expect(result, isA<double>());
    });

    //Testing when a function throws an Exception
    test('the calculator throws an ArgumentError when dividing by zero', (){
      expect(() => calculator.divide(2, 0), throwsArgumentError);
    });
  });
  //Matcher class will wrap in equals
  //TypeMatcher && StreamMatcher
}