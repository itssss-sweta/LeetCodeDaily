class Solution {
  List<int> getConcatenation(List<int> nums) {
    List<int> concatenateNumber = [];
  List<String> concatenateNumberIndex = [];
  concatenateNumber.addAll(nums);
  String index;
  for (int j = 0; j < 2; j++) {
    for (int i = 0; i < concatenateNumber.length; i++) {
      index = 'num[$i]';
      concatenateNumberIndex.add(index);
    }
  }
  print(concatenateNumberIndex);
  concatenateNumber.addAll(nums);
  print(concatenateNumber);
      return concatenateNumber;
  }
}