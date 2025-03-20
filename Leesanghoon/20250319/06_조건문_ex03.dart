// Excercise
// 점수를 입력받아 학점으로 표시하기
// 90점 이상이면 : '입력하신 점수 __은 A학점 입니다.'
// 80점 이상이면 : '입력하신 점수 __은 B학점 입니다.'
// 70점 이상이면 : '입력하신 점수 __은 C학점 입니다.'
// 60점 이상이면 : '입력하신 점수 __은 D학점 입니다.'
// 50점 미만이면 : '입력하신 점수 __은 E학점 입니다.'

main(){
  // 조건문 (Conditional Statement)
  // if
  int score = 50;

  String result = "입력하신 점수";
  String output = "학점 입니다.";
  String grade = "";

/*
  if(score >= 90){
    grade = "A";
    output = "학점 입니다.";
  }else if(score >= 80){
    grade = "B";
    output = "학점 입니다.";
  }else if(score >= 70){
    grade = "C";
    output = "학점 입니다.";
  }else if(score >= 60){
    grade = "D";
    output = "학점 입니다.";
  }else{
    grade = "F";
    output = "학점 입니다.";
  }
*/

// switch
  switch(score ~/ 10){
    case 9:
      grade = "A";
      output = "학점 입니다.";
    case 8:
      grade = "B";
      output = "학점 입니다.";
    case 7:
      grade = "C";
      output = "학점 입니다.";
    case 6:
      grade = "D";
      output = "학점 입니다.";
    default:
      grade = "F";
      output = "학점 입니다.";
  }

  print("$result $score는 $grade$output");
}
