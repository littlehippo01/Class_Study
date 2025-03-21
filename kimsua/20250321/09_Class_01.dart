
import 'calc.dart';
import 'calc02.dart';//만든 클라스를 들고올 때 
import 'calc03.dart';

main(){
  print("Property를 이용하는 방법");
  Calc01 calc01 = Calc01();
  Calc02 calc02 = Calc02();
  //object 객체 지향적 언어

  calc01.num1 = 1;
  calc01.num2 = 2;
  print("덧셈 결과 : ${calc01.addition()}");
  print("뺄셈 결과 : ${calc01.subraction()}");
  print("곱셈 결과 : ${calc01.multiplication()}");
  print("나눗셈 결과 : ${calc01.divistion()}");

  print("Medhod를 이용하는 방법");
  print("덧셈 결과 : ${calc02.addition(1,2)}");
  print("뺄셈 결과 : ${calc02.subraction(3,4)}");
  print("곱셈 결과 : ${calc02.multiplication(1,2)}");
  print("나눗셈 결과 : ${calc02.divistion(1,2)}");
  
  print("생성자를 자용하는 방법");//보안에 좋아서 많이 쓰임
  Calc03 calc03 = Calc03(1,2);
  print("덧셈 결과 : ${calc03.addition()}");
  print("뺄셈 결과 : ${calc03.subraction()}");
  print("곱셈 결과 : ${calc03.multiplication()}");
  print("나눗셈 결과 : ${calc03.divistion()}");

  //_를 붙여서 만든거는 private하기 때문에 보이지 않는다


}

