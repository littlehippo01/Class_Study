//main에서 지정한 숫자를 가지고 구구단을 출력하는 클래스를 생성
// 단 ,클랙스와 데이터 전달 방법은 Method를 이용한다

main(){
  Gugudan gugudan = Gugudan();
  gugudan.gugudanprint(8);
}

class Gugudan{


  //Method
  gugudanprint(int dan){
    print("******* $dan 단 *******");
    for(int i=1;i<10;i++){
      print("    $dan X $i = ${dan*i}");
    }
  }

}