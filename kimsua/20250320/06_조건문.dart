void main(){
  //2025.03.20
  //
  //조건문 (Condirional Ststement)
  //데이터가 들어 왔는데 그 정보를 판단하기 위해서 사용한다.

  int num1 = 4; 
  String result ="";
  //if 만약에 
  //if(조건){}
  if(num1 > 10){
  
    result ="보다 큰";
  }
  else if(num1 <10){
    result = "보다 작은";

  }
  else{ // 위 조건에 부합되지 않을 때 실행 됨.
    //else는 조건부가 필요가 없다
    result = "과 같은";

  }

 print("입력된 $num1은(는) 10 $result 수 입니다.");



 //------------------------------------------------
 //Excercise
 //변수에 있는 숫자 값을 비교해서
 //숫자가 5의 배수이면 '입력된 숫자 __는 5의 배수입니다'
 //숫자가 5의 배수가 아니면 '입력된 숫자__는 5의 배수가 아니며 나머지 값은 __입니다
 //수식으로 만들 수 없는 것을 data라고 한다.

 int num2=10; // 비교문에 들어갈
 int num4 = num2;
 String result2 = ""; // 달라지는 문자값
 int i=5; // 배수
 int num3 = num2 %=i; //나머지 값

 if(num3==0){
    result2="배수";
 }else
 {
  result2="배수가 아니며 나머지 값은 $num3";
 }
 print('입력된 숫자 $num4은(는) $i의 $result2 입니다');

//조건문 중에 if가 제일 처리가 느리기 때문에
//if을 최대한 줄이기 위해 여러 알고리즘이 나오고 있다

//switch
switch(num4 %5){
  case 0:
   print('입력된 숫자 $num4은(는) $i의 배수 입니다');
  default:
  print('입력된 숫자 $num4은(는) $i의 배수가 아니며 나머지 값은 ${num4%5} 입니다');
}
//Ecercise
//num2가 2의 배수이면 '2의배수이면 2의배수입니다.
//num2가 3의 배수이면 '3의배수이면 3의배수입니다.
//num2가 4의 배수이면 '5의배수이면 5의배수입니다.
  i =2;
int num5 =20;
 if(num5%2==0){
  print("2의 배수입니다.");
 }
 if(num5%3==0){
  print("3의 배수 입니다.");
 }
 if(num5%5==0){
  print("5의 배수 입니다");
 }

 //Exercise
 //점수를 입력 받아 학점으로 표시하기
 //90 이상이면 : '입력하신 점수는 __는 A학점입니다
 //80 이상이면 : '입력하신 점수는 __는 B학점입니다
 //70 이상이면 : '입력하신 점수는 __는 C학점입니다
 //60 이상이면 : '입력하신 점수는 __는 D학점입니다
 //60 미만이면 : '입력하신 점수는 __는 F학점입니다

  num5= 58;
  if(num5>100 ||num5 <0){ //속도가 많이 느려져서 웬만하면 and or는 안쓰기
    print("Data를 확인해 주세요");

  }else{
  if(num5>=90){
    result2="A";
  }else if(num5>=80){
    result2="B";
  }else if(num5>=70){
    result2="C";
  }else if(num5>=60){
    result2="D";
  }else{
    result2="F";
  }
    print("입력하신 점수 $num5는 $result2학점 입니다.");
  }
  if(num5>100||num5<0) {
    print("Data를 확인하고 다시 입력해 주세요");
  }else{
  switch(num5~/10){
    case 10:
    case 9:
      result2 = 'A';
    case 8 :
      result2 = 'B';
    case 7:
      result2 = 'C';
    case 6:
      result2 = 'D';
    default:
      result2 ='F';
  }
    print("입력하신 점수 $num5은(는) $result2학점 입니다.");
  }

  //삼항 연산자
  bool isPublic = false ;
  var vis = isPublic?"True":"false"; // 디자인 하는 과정에서 if문을 쓸 수 없지만 조건문이 필요할 떄 사용
  print(vis);
  

}
