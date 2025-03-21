//입력한 자릿수 정수의 합 구하기
//입력숫자 : 12345678
//결과
//Sum of 12345678 = 36
void main(){
  int inputValue = 222;
  int FinputValue = inputValue;
  int sum=0;
  int sum1=0;

  while(inputValue!=0){
    sum = inputValue %10;
    sum1 += sum;
    inputValue = inputValue~/10;
  }
  print("Sum of $FinputValue = $sum1");

}