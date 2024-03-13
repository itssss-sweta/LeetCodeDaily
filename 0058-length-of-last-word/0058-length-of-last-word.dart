class Solution {
  int lengthOfLastWord(String s) {
  String s1 = s.trimRight();
  print(s1);

  int lastIndex = s1.lastIndexOf(' ');
  int length = s1.length - lastIndex - 1;
  print(lastIndex);
  print(length);
      return length;
  }
}