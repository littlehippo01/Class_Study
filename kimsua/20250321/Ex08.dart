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


print("덧셈 결과는 ${numAdd(num1,num2)}입니다");
print("$num1 - $num2 =  ${numSub(num1,num2)}입니다");
print("${numMul(num1,num2)}입니다");
print("${numDiv(num1,num2)}입니다");

print("");

}// main

int numAdd(int num1,int num2){
return(num1+num2);
}
int numSub(int num1,int num2){
return(num1-num2);
}
int numMul(int num1,int num2){
return(num1*num2);
}
double numDiv(int num1,int num2){
return(num1/num2);
}
