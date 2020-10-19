class Calculator {
  double add(double a, double b) => a+b;

  double sub(double a, double b) => a-b;

  double multiply(double a, double b) => a*b;

  double divide(double a, double b){
    if(a == 0 || b == 0) throw ArgumentError('Cannot divide by 0');
    return a/b;
  }

  Future<double> powerOfTwo(double a) =>
      Future.delayed(const Duration(seconds: 1), () => a * a);

  Stream<double> pi() => Stream.fromIterable([3, 3.1, 3.14, 3.141, 3.1415]);
}