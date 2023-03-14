class Calculations {
  int res = 0;
  var a = 0;
  var sum = 0;
  int reset() {
    res = 0;
    return res;
  }

  int calc(int index) {
    if (index == 10) {
      return sum;
    } else if (index == 12) {
      return sum;
    } else if (index == 14) {
      sum = reset();
      return sum;
    } else {
      a = index;
      sum = sum + a;
      return a;
    }
  }
}
