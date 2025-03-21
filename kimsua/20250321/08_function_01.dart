/*
2025.03.21
function에 대하여 
 */


void main(){
List<int> list1 = [1,3,5,7,9];
List<int> list2 = [1,3,5,7,9,70,90];

// addList(list1);
// addList(list2);
int sum1 = addList(list1);
print("리스트의 합계는 $sum1 입니다");
int sum2 = addList(list2);
print("리스트의 합계는 $sum2 입니다");

}// main
int addList(List<int> list10){ // 주는 값이 정수이므로 정수 타입의 함수를 소환한다
  int sum = 0;
  for(int li in list10){
    sum += li;  
  }
  return(sum);
}
