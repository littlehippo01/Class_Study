void main(){ 
//for문
//1부터 10까지 출력해보기

    for(int i=1;i<11;i++){
        print(i);
    }
//1 부터 10 까지 합을 구하시오
    int sum=0;
    int startNum =1;
    int endNum =10;
    for(int i = startNum;i<=endNum;i++){ // for 문 안에서만 쓰는걸 지역 변수 라고 한다
                                         // 메인에서 만들어서 쓰는 변수는 전역 변수이다
      sum += i; // sum = sum + i
    }
    print("$startNum부터 $endNum까지의 합계는 $sum 입니다. ");

    //Exercise
    // 1부터 10까지 수중 짝수의 합과 홀수의 합을 구하지 (단,for문은 1개만 사용)

    int sumEven=0;
    int sumOdd=0;
    for(int i =startNum;i<=endNum;i++){
      if(i%2==0){
        sumEven += i;
      }else{
        sumOdd +=i;
      }
    }
    print("$startNum부터 $endNum까지의 수중 짝수의 합은 $sumEven이고, 홀수의 합은 $sumOdd 입니다.");
  //List를 반복문에 사용하기

  List<int>numList=[1,2,3,5,7,9];
  int sumList=0;

  for(int i=0;i<numList.length;i++){
    sumList += numList[i];
  }
  print(sumList);

  sumList =0;

  for(int num in numList){ //리스트의 값을 가지고 옴
    sumList += num;
  }
  print(sumList);
  //while
  //~하는 동안에
  int sumNum = 0;
  int number = 1;
  while(number<=10){
    sumNum += number;
    number++;
  }
  print(sumNum);
  // while(number<=100){
  //   if(number>10){
  //     break;
  //   }
  //   number++;
  // }

  for(int i=1;i<=100;i++){
    if(i==5){
      break;
    }
    print(i);
  }

  for(int i=1;i<=10;i++){
    if(i==5){
      continue; // 밑에 과정은 진행하지 말고 for문으로 돌아가기
    }
    print(i);
  }
  


} 