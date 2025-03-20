// Exercise
// 1 ~ 10까지의 수 중 짝수의 합과 홀수의 합 구하기 (단, For문은 1개만 사용, 수의 범위는 변경 가능하다)
// 출력 예시 : 1 ~ 10까지의 수 중 짝수의 합은 __이고, 홀수의 합의 __입니다.

main(){
  int s_idx = 1;
  int e_idx = 10;

  int even_sum = 0;
  int odd_sum = 0;

  for(int i = s_idx; i <= e_idx; i++){
    if(i % 2 == 0){
      even_sum += i;
    }else{
      odd_sum += i;
    }
  }

  print("1 ~ 10까지의 수 중 짝수의 합은 $even_sum이고, 홀수의 합의 $odd_sum입니다.");
}