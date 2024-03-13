class Solution {
  List<int> plusOne(List<int> array) {
   for (int i = array.length - 1; i >= 0; i--) {
    int sum = array[i] + 1;
    print(sum);
    String sumString = sum.toString();
    if (sumString.length == 1) {
      array[i] = sum;
      break;
    } else {
      array[i] =sum % 10; 
    }
    if (i == 0 && sum >= 10) {
      array.insert(0, 1); 
    }
  }
  return array;
}
}