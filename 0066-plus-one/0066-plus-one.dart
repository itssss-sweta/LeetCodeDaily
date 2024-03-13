class Solution {
  List<int> plusOne(List<int> array) {
   for (int i = array.length - 1; i >= 0; i--) {
    int sum = array[i] + 1;
    print(sum);
    String sumString = sum.toString();
    if (sumString.length == 1) {
      array[i] = sum;
      break;
    }
    if (sumString.length == 2) {
      array[i] = int.parse(
          sumString.substring(sumString.length - 1, sumString.length));
    }
    if (i == 0 && sum >= 10) {
      array.insert(
          0,
          int.parse(
              sumString.substring(sumString.length - 2, sumString.length - 1)));
    }
  }
  print(array);
  return array;
}
}