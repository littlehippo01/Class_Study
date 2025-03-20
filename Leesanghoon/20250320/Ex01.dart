// Factorial 구하기
// 4! = 4 * 3 * 2 * 1
// 결과
// 4's factorial value = 24

void main() {
  int s_idx = 4;
  int e_idx = 1;

  int result = 1;

  for(int i = s_idx; i >= e_idx; i--){
    print(i);
    result *= i;
  }

  print("** Quiz 결과 ==> 4's factorial value = $result");
}