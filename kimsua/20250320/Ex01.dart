//Factoral = 구하기
//4! = 4*3*2*1
//4's Factroa; value =24
// void main(){
//   int inputValue= 4;
//   int sumMul=1;
//   for(int i=1;i<=inputValue;i++){
//     sumMul = sumMul*i;
//   }
//   print("$inputValue factorial value = $sumMul");
//입력한 한 자릿수 정수의 합 구하기
//입력 숫자 : 12345678
//결과
// Sum of 12345678
void main(){
  int inputValue = 12345678;
  int sum = 0;
  int sum1 = 0;

  while(inputValue==0){

    sum = inputValue %10;
    sum1 += sum;
    inputValue ~/ inputValue%10;

  }
  print(sum1);
}

