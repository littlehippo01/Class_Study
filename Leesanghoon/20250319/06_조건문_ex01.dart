// Excercise
// 변수에 있는 숫자 값을 비교해서
// 숫자가 5의 배수이면 '입력된 숫자 __은 5의 배수입니다.'
// 숫자가 5의 배수가 아니면 '입력된 숫자 __은 5의 배수가 아니며 나머지 값은 __ 입니다.'

main(){
  // 조건문 (Conditional Statement)
  int num1 = 31;
  int rslt = num1 % 5;

  String output = "";

  if(rslt == 0){
    output = "입력된 숫자 $num1은(는) 5의 배수입니다.";
  }else{
    //output = "입력된 숫자 $num1은(는) 5의 배수가 아니며 나머지 값은 $rslt 입니다.";
    output = "입력된 숫자 $num1은(는) 5의 배수가 아니며 나머지 값은 ${num1 % 5} 입니다.";
  }

  print(output);
}