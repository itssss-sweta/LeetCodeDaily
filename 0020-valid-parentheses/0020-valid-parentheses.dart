class Solution {
  bool isValid(String str) {
  
   List<String> stack = [];
  
  for (int i = 0; i < str.length; i++) {
    String currentChar = str[i];

    if (currentChar == '(' || currentChar == '[' || currentChar == '{') {
      stack.add(currentChar);
    } else if (currentChar == ')' || currentChar == ']' || currentChar == '}') {
      if (stack.isEmpty) {
        return false; // Unmatched closing parenthesis
      }

      String lastOpen = stack.removeLast();

      if ((currentChar == ')' && lastOpen != '(') ||
          (currentChar == ']' && lastOpen != '[') ||
          (currentChar == '}' && lastOpen != '{')) {
        return false; // Mismatched opening and closing parenthesis
      }
    }
  }

  return stack.isEmpty; // If the stack is empty, all parentheses are balanced
}
}