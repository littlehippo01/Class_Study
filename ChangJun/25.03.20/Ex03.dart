main() {
  // List의 최대값과 최대값 위치 구하기
  // 결과
  // 숫자들 중 최대값은 15 이고 5번째 값 입니다.

  List<int> num = [19, 12, 13, 14, 15];


  // 최대값 구하기
  // 비교문을 통해 마지막에 남는 값이 가장 큰 값이 되도록 한다.


  int maxValue = num[0];
  // 최대값으로 설정할 변수이자 첫 비교값으로 num[0] 를 넣어 비교 해준다!
  // 0 을 넣어주지 않는 이유는 list의 값에 음수가 존재하면 비교를 못하는 경우가 생기기 때문!
  
  int maxIndex = 0;
  // 최대값이 list 의 몇 번째에 위치하는지에 대한 변수이다.
  // 이후 loopCount 를 이용해 값을 정해준다.
  
  int loopCount = 0;
  // for 문이 시행 될 때마다 1 씩 더해주어 몇 번 시행 되었는지 기록하기 위한 변수이다.


  for (int i in num) {
    // i 는 지역변수 로서 for 문 안에서만 존재하는 변수이다.
    // for ... in 문의 i 는 list 의 첫 번째 값 (list[0]) 부터 하나씩 불러온다.

    loopCount++;
    // for 문의 시행 횟수를 기록하기 위해 1 씩 더해준다.


    if (i >= maxValue) {
      // 첫 시행에서는 i 와 maxValue 가 같은 값이기 때문에 assign 을 꼭 넣어주어야 한다!
      // 넣지 않을 경우 비교 과정에서 대소 비교가 불가하여 false 처리 되어
      // maxIndex 에 loopCount 가 적용되지 못해 첫 변수 설정으로 정한 수가 나오게 된다.

      maxValue = i;
      // if 문의 값이 True 일 경우 i 가 더 큰 값 이기 때문에 전체 loop 이후에 가장 큰 값이
      // 적용된 maxValue 가 남게 된다.

      maxIndex = loopCount;
      // 시행마다 1 번째의 값 i, 2 번째의 값 i 순서로 진행되는데 if 값이 true 인 i 값이
      // 몇 번째 시행 즉, 몇 번째 자리에 있는지를 적용시켜두기 위해 작성한다.
    }
  }

  print('숫자들 중 최대값은 $maxValue이고 $maxIndex번째 값 입니다.');


  // 최소값 구하기
  int minValue = num[0];
  int loopCount2 = 0;
  int minIndex = 0;

  for (int i in num) {
    loopCount2++;
    if (i <= minValue) {
      minValue = i;
      minIndex = loopCount2;
    }
  }

  print('숫자들 중 최소값은 $minValue이고 ${minIndex}번째 값 입니다.');
}
