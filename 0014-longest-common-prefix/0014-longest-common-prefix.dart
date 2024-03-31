class Solution {
  String longestCommonPrefix(List<String> strs) {
         if (strs.isEmpty) {
      return ''; // Handle the case when the input list is empty.
    }

    String prefix = strs[0]; // Assume the first string as the prefix
    for (int i = 1; i < strs.length; i++) {
      while (strs[i].indexOf(prefix) != 0) {
        prefix = prefix.substring(0, prefix.length - 1);
        print(prefix); // Reduce the prefix until it matches
        if (prefix.isEmpty) {
          return ''; // If the prefix becomes empty, there's no common prefix
        }
      }
    }
    return prefix;
  
  }
}