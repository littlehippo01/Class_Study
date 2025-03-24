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

  // 1), 2)번에 해당되는 부분
  // print(calFunc(num1, num2, "add"));
  // print(calFunc(num1, num2, "sub"));
  // print(calFunc(num1, num2, "mul"));
  // print(calFunc(num1, num2, "div"));

  // 3)번에 해당되는 부분
  print(calFunc(num1, num2));

} // main

// 1) if문으로 Function 구성하기
/*
calFunc(int num1, int num2, String job) {
  int intResult = 0;
  double dblResult = 0;

  if(job == "add") {
    intResult = num1 + num2;
    return("덧셈 결과는 $intResult 입니다.");
  }else if(job == "sub") {
    intResult = num1 - num2;
    return("$num1 - $num2 = $intResult");
  }else if(job == "mul") {
    intResult = num1 * num2;
    return(intResult);
  }else if(job == "div") {
    dblResult = num1 / num2;
    return(dblResult);
  }
}
*/
// 2) Switch문으로 Function 구성하기
/*
calFunc(int num1, int num2, String job) {
  int intResult = 0;
  double dblResult = 0;

  switch(job){
    case "add":
      intResult = num1 + num2;
      return("덧셈 결과는 $intResult 입니다.");
    case "sub":
      intResult = num1 - num2;
      return("$num1 - $num2 = $intResult");
    case "mul":
      intResult = num1 * num2;
      return(intResult);
    case "div":
    dblResult = num1 / num2;
    return(dblResult);
  }
}
*/
// 3) Funcion에서 List를 제작한 후 if나 switch로 구성하기
calFunc(int num1, int num2) {
  List<String> jobs = ['add', 'sub', 'mul', 'div'];
  int intResult = 0;
  double dblResult = 0;

  //print(jobs);

  for(String data in jobs) {
    //print(data);
    switch(data){
    case 'add':
      intResult = num1 + num2;
      return("덧셈 결과는 $intResult 입니다.");
    case 'sub':
      intResult = num1 - num2;
      return("$num1 - $num2 = $intResult");
    case 'mul':
      intResult = num1 * num2;
      return(intResult);
    case 'div':
    dblResult = num1 / num2;
    return(dblResult);
    }
  }

}
