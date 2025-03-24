// Property를 이용한 방법
class Calc {
  // Property(Attribute, Field)
  int _num1 = 0;  // Private 속성
  int _num2 = 0;  // Private 속성
  
  // Constructor(생성자)
  Calc(int num1, int num2)
  : _num1 = num1,
    _num2 = num2;

  // factory 생성자
  factory Calc.check(int num1, int num2) {
    int startNum = 0;
    int endNum = 0;

    if(num1 > num2) {
      startNum = num2;
      endNum = num1;
    }else{
      startNum = num1;
      endNum = num2;
    }
    return Calc(startNum, endNum);
  }

  // Method
  int sumCalc() {
    int sumValue = 0;
    for(int i = _num1; i <= _num2; i++) {
      sumValue += i;
    }
    return sumValue;
  }

  String evenOdd(sum) {
    String evenOddResult = "";

    if(sum % 2 == 0) {
      evenOddResult = "짝수";
    }else{
      evenOddResult = "홀수";
    }
    return(evenOddResult);
  }
}
 // Calc03