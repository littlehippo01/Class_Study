import 'dart:developer';
import 'dart:math';

void main(){
  int num1 = 10;
  int num2 = 4;
  
  //덧셈 계산을 function으로 작업하여 출력
  //출력 내용 : "덧셈결과는"14

  //뺄셈 계산을 function으로 작업하여 출력
  //출력 내용 : "10-4 =6"

  //곱셈 계산을 function으로 작업하여 출력
  //출력 내용 : 40
  
  //나눗셈 계산을 function으로 작업하여 출력
  // 출력 내용 : 2.5


print("덧셈 결과는 ${calcFunction(num1,num2,"add")}입니다");
print("$num1 - $num2 =  ${calcFunction(num1,num2,"sub")}입니다");
print("${calcFunction(num1,num2,"mul")}입니다");
print("${calcFunction(num1,num2,"div")}입니다");

}// main

calcFunction(int num1,int num2,String name){

  // if(name=='add'){
  //   return(num1+num2);
  // }else if(name=='sub'){
  //   return(num1-num2);
  // }else if(name=='mul'){
  //   return(num1*num2);
  // }else{
  //   return(num1/num2);
  // }
  // switch(name){
  //   case 'add':
  //     return(num1+num2);
  //     case 'sub':
  //     return(num1-num2);
  //     case 'mul':
  //     return(num1*num2);
  //     default:
  //     return(num1/num2);

  // }
  List sam =[num1+num2,num1-num2,num1*num2,num1/num2];
  List<String> sma1 = ['add','sub','mul','div'];
  int count =0;
  for(String i in sma1 ){
    if(i==name){
    return(sam[count]);
    }
    count++;
  }

  
}

