class Solution {
  List<int> plusOne(List<int> array) {
  for (int i = array.length - 1; i >= 0; i--) {
    int sum = array[i] + 1;
    print(sum);
    if (sum < 10) {
      array[i] = sum;
      break;
    }
    if (sum >= 10) {
      array[i] = sum % 10;
    }
    if (i == 0 && sum >= 10) {
      array.insert(0, 1);
    }
  }
  return array;
}
}