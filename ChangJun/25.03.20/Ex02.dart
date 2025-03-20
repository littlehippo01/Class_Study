main() {
  // 입력한 한 자릿수 정수의 합 구하기
  // 입력숫자 : 12345678
  // 결과
  // Sum of 12345678 = 36
  // Coding Test : 백준, Programmers
  
  int inputValue = 12345678;
  // 입력 값


  // 10으로 나눈 나머지 (1의 자리)
  // 위의 몫 -> 1234567
  // 다시 10으로 나눈 나머지 ( 10의 자리)
  // 다시 위의 몫 ->123456


  int sumRemain = 0;
  int remain = 0;

  while (inputValue != 0) { 
        // inputValue 의 값 (추후 계산으로 10으로 나눈 몫이 됨) 이 0이 아니면 ~
    // 0이 되면 더이상 계산할 자릿수가 없기 때문에!

    remain = inputValue % 10;
    // 들어온 inputValue 를 10으로 나눈 나머지에 대한 변수

    sumRemain += remain;
    // 나머지의 합을 위한 sum1

    inputValue = inputValue ~/ 10;
    // *** inputValue 의 data 를 for 안에서 바꿔줄 수 있다! ***
    // 다음 while 의 진행을 위해 inputValue 의 값을 바꾸어 준다!
  }
  print(sumRemain);
}
