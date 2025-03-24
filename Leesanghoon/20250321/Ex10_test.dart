main() {
  print("Method를 이용한 방법");

  Gugudan gugudan = Gugudan();
  gugudan.gugudanPrint(5);
}

class Gugudan {
  int gugudanPrint(int num) {
    int result = 0;

    print("*** $num 단 ***");
    for(int i = 1; i <= 9; i++) {
      result = num * i;
      print("$num X $i = $result");
    }

    return 0;
  }
}