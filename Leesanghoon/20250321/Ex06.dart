// BMI 계산하기
// 신장이 170cm이고, 몸무게가 70kg인 경우의 BMI(체질량지수) 계산하기
// BMI = 체중(kg) / 키(m)의 제곱

import 'dart:math';

main() {
  double height = 173;
  double weight = 70;
  double result = 0;

  result = weight / pow((height/100), 2);

  if(result <= 18.4) {
    print("저체중입니다.");
  }else if(result >= 18.5 && result <= 22.9) {
    print("정상체중입니다.");
  }else if(result >= 23 && result <= 24.9) {
    print("과체중입니다.");
  }else if(result >= 25 && result <= 29.9) {
    print("비만입니다.");
  }else if(result >= 30) {
    print("고도비만입니다.");
  }

  print(result);
}