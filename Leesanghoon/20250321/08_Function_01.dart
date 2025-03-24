main() {
  //------------
  // In Coding
  //------------
  /*
  List<int> list1 = [1,3,5,7,9];
  int sum = 0;

  for(int data in list1) {
    sum += data;
  }

  print("합계 : $sum");

  List<int> list2 = [10,30,50,70,90];
  int sum2 = 0;

  for(int data in list2) {
    sum2 += data;
  }

  print("합계 : $sum2");
  */

  //--------------------
  // Function으로 변환!!!
  //--------------------
  List<int> list1 = [1,3,5,7,9];
  List<int> list2 = [10,30,50,70,90];

  int sum1 = addList(list1);
  int sum2 = addList(list2);

  print("List1의 합계는 $sum1 입니다.");
  print("List2의 합계는 $sum2 입니다.");
} // main

int addList(List<int> list1) {
  int sum = 0;

  for(int data in list1) {
    sum += data;
  }

  return(sum);
}