main(){
    //============
  // for문
  //============
  // 1 ~ 10까지 출력해 보기
  for(int i = 1; i <= 10; i++){
    print(i);
  }

  // 1 ~ 10까지 합 구하기
  int s_idx = 1;
  int e_idx = 10;
  int sum = 0;

  for(int i = s_idx; i <= e_idx; i++){
    sum += i;
  }
  print("$s_idx부터 $e_idx까지의 합계는 $sum 입니다.");

  // List를 반복문에 사용하기
  List<int> numList = [1, 3, 5, 7, 9];
  int sumList = 0;

  for(int i = 0; i< numList.length; i++){
    sumList += numList[i];
    print(numList[i]);
  }
  print(sumList);

  for(s_idx in numList){
    sumList += s_idx;
  }
  print(sumList);
  
  //============
  // while
  //============
  int sumNum = 0;
  int number = 1;

  while(number <= 10){
    sumNum += number;
    number++;
  }
  print(sumNum);
  
  while(number <= 100){
    if(number > 10){
      break;
    }
    number++;
  }

  for(int i = 1; i <= 100; i++){
    if(i == 5){
      break;  // continue / break
    }
    print(i);
  }
}