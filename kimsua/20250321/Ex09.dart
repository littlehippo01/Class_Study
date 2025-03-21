//1 부터 10까지 합을 구하고 그 합이 홀수 인지 짝수 인지 출력
//단, 클래스 1개 생성하고 클래스 Medhod를 2개(합게,홀짝수판단)
//숫자의 번위는 main에서 선정한다
// 클래스와 데이터 연계 방법은 생성자를 사용한다

//결과 
/*
  1부터 10까지의 합은 55입니다
  1부터 10까지의 합의 수는 홀수 입니다
*/

import 'dart:math';

main(){
  int startNum =10;
  int endNum=1;

  Calc clac = Calc.check(startNum,endNum);

  int sum = clac.sumCalc();
  String result = clac.evenOdd(sum);
  print("$startNum 부터 $endNum 까지의 합은  $sum 입니다.");
  print("$startNum 부터 $endNum 까지의 합은 $result 입니다.");


}

class Calc{

  late int num1;
  late int num2;

  Calc(int num1,int num2) //비어있는  생성자
  : this.num1 =num1,   
    this.num2= num2;

  //안쓰면 기본 생성자로 만들어 진다

  //Method

  //factory 생성자 dart에만 존재함
  factory Calc.check(int num1,int num2){ 

    int startNum =0;
    int endNum = 0;
    if(num1>num2){
      startNum = num2;
      endNum = num1;
    }else{
      startNum =num1;
      endNum = num2;
    }
    return Calc(startNum,endNum);
  }
  int sumCalc(){
    int sum =0;
    
    for(int i=num1;i<=num2;i++){
      sum+=i;
      }
    return sum;
  }
  String evenOdd(int sum){
    String sumText = '';
    if(sum %2==0){
      sumText = '짝수';
    }else{
      sumText = '홀수';
    }
    return(sumText);
  }

}
