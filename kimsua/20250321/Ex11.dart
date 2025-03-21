//main에서 지정한 숫자를 숫자를 가지고 구구단을 추렭하는 클래스를 생성
//단, 클래스와 데이터 전달 방법은 생성자를 이용한다.
//출력시 곱해지는 수중 홀수는 *로 표시한다


main(){
  Gugudan gugudan = Gugudan(4);
  gugudan.gugudanPrint();

}

class Gugudan{

late int dan;

  Gugudan(int dan)
  : this.dan = dan;

  gugudanPrint(){
    for(int i=1;i<10;i++){
        print("$dan X ${(i%2)==0 ? i:'*'} = ${dan*i}");
    }

  }
}