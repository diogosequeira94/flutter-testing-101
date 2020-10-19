class Calculator {
  double add(double a, double b) => a+b;

  double sub(double a, double b) => a-b;

  double multiply(double a, double b) => a*b;

  double divide(double a, double b){
    if(a == 0 || b == 0) throw ArgumentError('Cannot divide by 0');
    return a/b;
  }
}