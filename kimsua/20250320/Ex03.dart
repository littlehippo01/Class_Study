void main(){
  List<int> num = [25,10,81,104,15];
  int listMax = num[0];
  int listMin = num[0];
  int intI = 1;
  int countI=0;
  for(int i in num){
        
      if(listMax <= i){
        listMax = i;
        countI=intI;
      }
    intI++;
  }

  print("숫자들 중 최댒값은 $listMax이고 ${countI}번째 값 입니다");

//최솟값을 구하는 값
intI=1;
countI=0;
for(int i in num){
    if(listMin>=i){
        listMin = i;
        countI=intI;
    }
    intI++;
}
print("숫자들 중 최솟값은 $listMin이고 $countI번째 값 입니다");



}