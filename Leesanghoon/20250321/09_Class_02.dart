main() {
  int n1 = 10;
  int n2 = 20;

  Sub sub = Sub(n1, n2);
  print(sub.addition());
  print(sub.subtraction());

}   // main

class Add {
  // property
  late int num1;
  late int num2;

  // Constructor
  Add(int num1, int num2)
  : this.num1 = num1,
    this.num2 = num2;

  // Method
  int addition() {
    return num1 + num2;
  }
}

// 상속
class Sub extends Add {
  // Property, Method는 그대로 상속된다.
  Sub(super.num1, super.num2);

  int subtraction() {
    return num1 - num2;
  }
}