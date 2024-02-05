class Solution {
  int firstUniqChar(String s) {
      int output = -1; // Initialize output to -1 (assuming no unique character is found)
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
        break; // Break out of the loop once a unique character is found
      }
    }
    print(output);
    return output;
  }
  
}
