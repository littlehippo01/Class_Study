//BMI 계산기
//신장이 170cm이고 몸무게가 70kg 경우의 BMI계산하기

import 'dart:math';

void main(){
double height = 167;
double weight =53;
//double bmi = 0;
//bmi = weight/(height*height)*10000;

// if(bmi>=30){
//   print("고도비만");
// }else if(bmi>=25){
//   print("비만");
// }else if(bmi>=23){
//   print("과체중");
// }else if(bmi>=18.5){
//   print("정상체중");
// }else{
//   print("저체중");
// }
print("${calBmi(height,weight)}입니다");

}//main

calBmi(double hight,double weight){
List<String> bodyType=["고도비만","비만","과체중","정상체중","저체중"];
List<double> test=[30,25,23,18.0];
double bmi = weight/(hight*hight)*10000;
int count =0 ;
while(bmi>0){
  if(bmi>=test[count]){
    break;
  }else{
    count++;
  };
}
return(bodyType[count]);

}
