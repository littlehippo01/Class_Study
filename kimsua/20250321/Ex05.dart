//List를 이용하여 5보다 작은 숫자만 List에 넣기

void main(){
  List<int> nums=[1,1,2,3,5,8,13,21,34,66,8];
  List<int> result =[];
  
  for(int num in nums){

    if(num<5){
        result.add(num);
    }
  }
  
  print(result);  

  //List Comperhension
  print([for(int num in nums)if (num<5)num]);  
}