void main(List<String> args) {
  // List 를 이용한 히스토그램 표시하기
  // 입력 숫자 : [34, 32, 55, 57, 59, 53, 90, 88, 88, 12]

  // 결과
  /*
    90 : #
    80 : ##
    70 : 
    60 : 
    50 : ###
    40 : 
    30 : ##
    20 : 
    10 : #
    0 : 
  */


  List<int> score = [34, 32, 55, 57, 59, 53, 90, 88, 88, 12];


  var histo = List<int>.filled(10, 0);
  // filled 를 통해 10 칸의 list 를 작성하며 안에 0 값을 준다.

  for (int i = 0; i < score.length; i++) {
    histo[score[i] ~/ 10]++;
  }
  print(histo);
  for (int i = (score.length - 1); i >= 0; i--) {
    // 결과 값이 위에서 부터 시작하기 때문에 내림차순을 위해
    // int i = (score.length-1); 로 시작한다!

    String scoreLength = "";
    // 해당 점수대에 점수가 없는 경우 공백으로 표시하기 위해 ""로 값을 준다!

    for (int j = 1; j <= histo[i]; j++) {
      // histo 의 값 (각 점수대 별 점수의 갯수) 을 "#" 로 입히기 위해
      // for 함수를 한번 더 준다.

      scoreLength += "#";
    }

    print('${i * 10} : $scoreLength');
  }
}
