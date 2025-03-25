// main에서 지정한 숫자를 가지고 구구단을 출력하는 클래스를 생성
// 단, 클래스와 데이터 전달방법은 생성자를 이용한다.
// 출력 시 곱해지는 수 중 홀수는 * 로 표시한다.

main() {
  print("생성자를 이용한 방법");

  Gugudan gugudan = Gugudan(4);
  gugudan.gugudanPrint();
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
      print("$_num X ${i % 2 == 0 ? i : '*'} = ${_num * i}");
    }
    return 0;
  }
}
