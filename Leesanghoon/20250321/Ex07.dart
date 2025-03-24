main() {
  int num1 = 10;
  int num2 = 4;

  // 덧셈 계산을 Function으로 작업하여 출력
  // 출력 내용 : "덧셈 결과는 14 입니다."

  // 뺄셈 계산을 Function으로 작업하여 출력
  // 출력 내용 : "10 - 4 = 6"

  // 곱셈 계산을 Function으로 작업하여 출력
  // 출력 내용 : 40

  // 나눗셈 계산을 Function으로 작업하여 출력
  // 출력 내용 : 2.5

  int addResult = 0;
  int subResult = 0;
  int mulResult = 0;
  double divResult = 0;

  addResult = addition(num1, num2);
  subResult = subtraction(num1, num2);
  mulResult = multiplication(num1, num2);
  divResult = division(num1, num2);

  print("덧셈 결과는 $addResult 입니다.");
  print("$num1 - $num2 = $subResult");
  print(mulResult);
  print(divResult);
}

int addition(int num1, int num2) {
  int result = 0;
  result = num1 + num2;

  return(result);
}

int subtraction(int num1, int num2) {
  int result = 0;
  result = num1 - num2;

  return(result);
}

int multiplication(int num1, int num2) {
  int result = 0;
  result = num1 * num2;

  return(result);
}

double division(int num1, int num2) {
  double result = 0;
  result = num1 / num2;

  return(result);
}