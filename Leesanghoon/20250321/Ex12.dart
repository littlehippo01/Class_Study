// main에서 지정한 숫자를 가지고 구구단을 출력하는 클래스를 생성
// 단, 클래스와 데이터 전달방법은 생성자를 이용한다.
// 출력 시 곱해지는 수 중 짝수단이면 짝수에, 홀수단이면 홀수에 * 로 표시한다.

main() {
  print("생성자를 이용한 방법");

  Gugudan gugudanEven = Gugudan(4);
  gugudanEven.gugudanPrint();

  print("");

  Gugudan gugudanOdd = Gugudan(5);
  gugudanOdd.gugudanPrint();
}

class Gugudan {
  // Property(Attribute, Field)
  int _num = 0;  // Private 속성

  // Constructor(생성자)
  Gugudan(int num)
  : _num = num;

  // Method
  int gugudanPrint() {
    print("*** $_num 단 ***");
    for(int i = 1; i <= 9; i++) {
      if(_num % 2 == 0) {
        print("$_num X ${i % 2 == 0 ? '*' : i} = ${_num * i}");  
      }else{
        print("$_num X ${i % 2 == 1 ? '*' : i} = ${_num * i}");
      }
    }
    return 0;
  }
}
