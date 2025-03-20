// List의 최대값과 최대값 위치 구하기
// 결과 : 숫자들 중 최대값은 15이고, 5번째 값입니다.

main() {
  List<int> num = [8, 30, 50, 18, 11];

  int max_value = num[0];
  int min_value = num[0];
  int loopCnt = 0;
  int max_idx = 0;
  int min_idx = 0;

  for(int data in num){
    loopCnt++;
    if(data >= max_value){
      max_value = data;
      max_idx = loopCnt;
    }
  }
  print("숫자들 중 최대값은 $max_value이고, $max_idx번째 값입니다.");

  loopCnt = 0;

  for(int data in num){
    loopCnt++;
    if(data <= min_value){
      min_value = data;
      min_idx = loopCnt;
    }
  }
  print("숫자들 중 최대값은 $min_value이고, $min_idx번째 값입니다.");
}