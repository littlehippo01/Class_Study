// List를 이용하여 5보다 작은 숫자만 List에 넣기

main() {
  List<int> nums = [1,1,2,3,5,8,13,21,34,66,89];
  List<int> result = [];

  for(int data in nums) {
    //print("$data, $num");

    if(data < 5) {
      result.add(data);
    }
  }

  print("Ex05-1 결과 ==> $result");

  // List Comprehension
  print([for(int data in nums) if(data < 5) data]);
}