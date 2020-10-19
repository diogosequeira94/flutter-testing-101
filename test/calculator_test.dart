import 'package:flutter_testing_101/calculator.dart';
import 'package:test/test.dart';
import 'dart:ui';

void main(){

  test('the calculator returns 4 when adding 2 and 2', (){
    // 1st step: setup -> create the calculator object
    final calculator = Calculator();
    // 2nd step: side effects -> collect the result you want to test
    final result = calculator.add(2, 2);
    //3rd step: expectations -> compare the result against an expected value
    expect(result, 4);
    //A test without expectation is a bad practice!
  });

  test('Calculator creates a non-null object', (){
    expect(Calculator(), isNotNull);
  });

  test('The calculator returns a double when adding 2 and 2', () {
    final calculator = Calculator();
    final result = calculator.add(2, 2);
    expect(result, isA<double>());
  });

  //Matcher class will wrap in equals
  //TypeMatcher && StreamMatcher
}