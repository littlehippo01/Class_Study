// Excercise
// num1이 2의 배수이면 '2의 배수입니다.'
// num1이 3의 배수이면 '3의 배수입니다.'
// num1이 5의 배수이면 '5의 배수입니다.'

main(){
  // 조건문 (Conditional Statement)
  int num1 = 49;
  
  String output = "";

  if(num1 % 2 == 0){
    output = "$num1은(는) 2의 배수입니다.";
  }else if(num1 % 3 == 0){
    output = "$num1은(는) 3의 배수입니다.";
  }else if(num1 % 5 == 0){
    output = "$num1은(는) 5의 배수입니다.";
  }else{
    output = "$num1은(는) 2, 3, 5의 배수가 아닙니다.";
  }

  print(output);
}