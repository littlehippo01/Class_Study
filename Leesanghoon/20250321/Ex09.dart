// 1 ~ 10까지의 합을 구하고, 그 합이 홀수인지 짝수인지 출력
// 단, 클래스 1개 생성하고, 클래스 Method를 2개(합계, 홀짝수 판단)
// 숫자의 범위는 main에서 선정한다.
// 클래스와의 데이터 연계 방법은 생성자를 사용한다.

// 결과
/*
  1부터 10까지의 합은 55 입니다.
  1부터 10까지의 합의 수는 홀수 입니다.
*/

import 'Ex09_calc.dart';

main() {
  int startNum = 1;
  int endNum = 10;

  Calc calc = Calc(startNum, endNum);
  int sum = calc.sumCalc();
  String result = calc.evenOdd(sum);

  print("$startNum부터 $endNum까지의 합은 $sum 입니다.");
  print("$startNum부터 $endNum까지의 합의 수는 $result 입니다.");
}
