void main(){
int n1 =10;
int n2 =20;
Sub sub =Sub(n1, n2);
print(sub.addition());
print(sub.subraction());

}//main

class Add{
  //Property
  late int num1; // int? num1; 으로도 가능하다 데이터가 들어 올 수도 있고 없을 수도 있을 떄 쓰임
  late int num2;
  //Constructor
  Add(int num1,int num2)
  : this.num1 = num1,
    this.num2 = num2;
  //위에 선언된을 구별해 주기 위해 this를 써줌


  //Method
  int addition(){
    return num1+num2;
  }
}

class Sub extends Add{

    Sub(super.num1,super.num2);
    int subraction(){
      return num1-num2;
    }

}