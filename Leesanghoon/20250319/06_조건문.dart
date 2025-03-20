main(){
  // 조건문 (Conditional Statement)

  // if
  int num1 = 5;
  int num2 = 31;

  String result = "";
  String output = "";

  if(num1 > 10){
    result = "10보다 큰 ";
  }else if(num1 < 10){
    result = "10보다 작은 ";
  }else{
    result = "10과 같은 ";
  }
  
  output = "입력된 숫자 $num1은 $result수 입니다.";
  print(output);

  // switch
  switch(num2 % 5){
    case 0:
      output = "입력된 숫자 $num2은(는) 5의 배수입니다.";
    default:
      output = "입력된 숫자 $num2은(는) 5의 배수가 아니며 나머지 값은 ${num2 % 5} 입니다.";
  }
  print(output);

  // 삼항 연산자
  bool isPublic = true;
  var vis = isPublic ? "True" : "False";
  print(vis);
}