// Method를 이용한 방법
class Gugudan{
  // Property(Attribute, Field)

  // Constructor(생성자)
  
  // Method
  int gugudanPrint(int num1) {
    int result = 0;
    print("*** $num 단 ***");
    for(int i = 1; i <= 9; i++) {
      result = num1 * i;
      print("$num1 X $i = $result");
    }
    return 0;
  }
} // Calc01