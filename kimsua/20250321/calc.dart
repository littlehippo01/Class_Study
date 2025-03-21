//Propertyf를 이용한 방법

//dart는 class를 만들 때 ()를 붙이지 않는다 파이썬은 씀

class Calc01{
  //Property(Attribute,field)
  int num1 = 0;
  int num2 = 0;

  //Constructor(생성자)
  //안쓰면 기본 생성자로 만들어 진다

  //Method
  int addition(){
    return num1+num2;
  }
  int subraction(){
    return num1-num2;
  }
  int multiplication(){
    return num1*num2;
  }
  double divistion(){
    return num1/num2;
  }
}

