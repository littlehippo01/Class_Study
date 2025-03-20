void main(List<String> args) {
  // Factorial 구하기
  // 4! = 4*3*2*1
  //결과
  //4's factorial value = 24

  int inputValue = 4; // 단, 데이터는 변경 가능
  int totalFact = 1;

  for (int i = 1; i <= inputValue; i++) {
    // i 는 1 부터 inputValue 와 같거나 작을 때 까지 1씩 더한다.
    totalFact *= i;
    // totalFact 는 i 를 계속해서 곱해준다.
    // 이때, i 는 inputValue 와 같아졌을 때까지 1씩 늘어난다.
  }
  print("$inputValue's factproa; value = $totalFact");
}
