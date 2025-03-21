//Medhod를 이용한 방법

//dart는 class를 만들 때 ()를 붙이지 않는다 파이썬은 씀

class Calc03{
  //Property
  int _num1 =0;
  int _num2 =0;


  

  //Constructor(생성자)
  Calc03(int num1,int num2) //비어있는  생성자
  : _num1 =num1,   
    _num2 = num2;

  //안쓰면 기본 생성자로 만들어 진다

  //Method
  int addition(){
    return _num1+_num2;
  }
  int subraction(){
    return _num1-_num2;
  }
  int multiplication(){
    return _num1*_num2;
  }
  double divistion(){
    return _num1/_num2;
  }
}