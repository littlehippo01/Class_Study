// 입력한 한자릿수 정수의 합 구하기
// 입력 숫자 : 12345678
// 결과 : Sum of 12345678 = 36

/*
main() {
  List<int> numList = [1, 2, 3, 4, 5, 6, 7, 8];
  int sumList = 0;

  for(int i = 0; i < numList.length; i++){
    sumList += numList[i];
    print(numList[i]);
  }
  print("Sum of 12345678 = $sumList");
}
*/

import 'dart:math';

main() {
  int in_value = 12345678;
  
  int s_idx = 1;
  int e_idx = 8;
  
  int mok = 0;
  int div = 0;
  int sum = 0;

  for(int i = s_idx; i <= e_idx; i++) {
    /*
    mok = in_value ~/ pow(10, i - 1);
    div = mok % 10;

    sum += div;
    print(mok);
    */

    div = in_value % 10;
    sum += div;
    
    in_value = in_value ~/ 10;;
    
    //print(in_value);
  }
  print("Sum of 12345678 = $sum");

}
