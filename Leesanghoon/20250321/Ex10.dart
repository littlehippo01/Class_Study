// main에서 지정한 숫자를 가지고, 구구단을 출력하는 클래스를 생성
// 단, 클래스와 데이터 전달 방법은 Method를 이용한다.

import 'Ex10_calc.dart';

main() {
  print("Method를 이용한 방법");

  Gugudan gugudan = Gugudan();
  gugudan.gugudanPrint(5);

}