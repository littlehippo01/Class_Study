main(){
  // Map : Key와 Value로 이루어진 Collection
  Map fruits = {
    'apple':'사과',
    'grape':'포도',
    'watermelon':'수박'
  };

  // 원하는 정보 검색하기
  print(fruits['apple']);

  // 수정하기
  fruits['watermelon'] = '시원한 수박';
  print(fruits);

  // Map 새로운 구성
  Map carMakers = {};
  carMakers['aaa'] = "AAA";
  carMakers.addAll({'hyundai':'현대자동차', 'kia':'기아자동차'});
  print(carMakers);

  // Map의 Key만 따로 출력하기
  print(carMakers.keys.toString());   // Tuple : 읽기 전용
  print(carMakers.keys.toList());     // List : 수정 가능
  print(carMakers.values.toList());   // List 수정 가능

  var carMakersNames = carMakers.keys.toString();

  // Generic 선언
  Map<String, int> fruitsPrice = {
    'apple' : 1000,
    'grape' : 2000,
    'watermelon' : 3000
  };
  print(fruitsPrice['apple']);
  int? applePrice = fruitsPrice['apple'];   // Optional Type 등장
  //int applePrice = fruitsPrice['apple']!;   // Optional Type를 대체하는 방법 (맨뒤에 ! 붙여 줌)
  print("사과의 가격은 $applePrice 입니다.");
}