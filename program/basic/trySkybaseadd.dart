void main() {
  var num = [1, 2, 3, 4, 5];
  var result = 0;
  for (int i = 0; i < num.length; i++) {
    if (num[i] % 2 == 0) {
      result = result + 1;
    } else if ((num[i] % 2 == 1) && (num[i] != 5)) {
      result = result + 3;
    } else if (num[i] == 5) {
      result = result + 5;
    }
  }
  print("Result:$result");
}
