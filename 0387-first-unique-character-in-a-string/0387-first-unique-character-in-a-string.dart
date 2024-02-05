class Solution {
  int firstUniqChar(String s) {
      int output = -1; 
    for (int i = 0; i < s.length; i++) {
      bool isUnique = true;
      for (int j = 0; j < s.length; j++) {
        if (i != j && s[i] == s[j]) {
          isUnique = false;
          break;
        }
      }
      if (isUnique) {
        output = i;
        break; 
      }
    }
    print(output);
    return output;
  }
  
}
