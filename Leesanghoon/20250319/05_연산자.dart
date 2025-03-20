main(){
  // 연산자
  // 자동 증감 연산자
  int num = 0;

  num = num + 1;
  num++;    // num = num + 1;

  num = num + 2;
  num += 2; // 누적 연산자

  num--;    // num = num - 1;
  print(num);

  // Optional : null Safety
  int num1 = 10;
  //int num2 = null;  // 불가
  int? num2 = null;
  print(num2);

  num2 ??= 8;   // num2의 값이 null이면 8이 기본값이다... 라는 의미
  print(num2);

  int? num3;
  print(num3 ??= 5);

  //int num4;     
  //print(num4++);  // 이렇게 작성하면 Error!!!

  // 조건 연산자
  int num5 = 10;
  int num6 = 5;

  print(num5 < num6);
  print(num5 > num6);
  print(num5 <= num6);
  print(num5 >= num6);
  print(num5 == num6);
  print(num5 != num6);

  // 논리 연산자
  bool result = 12 > 10 && 1 > 0;   // && (and 연산자 : true && true ==> true) 
  print(result);

  bool result2 = 10 > 5 || 1 > 2;   // || (or 연산자 : true || true, true || false, false || true ==> true) 
  print(result2);
}