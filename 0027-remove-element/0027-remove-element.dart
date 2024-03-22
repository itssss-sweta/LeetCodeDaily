class Solution {
  int removeElement(List<int> nums, int val) {
    int length = nums.length;
    int output = 0;

    for (int i = length - 1; i >= 0; i--) {
      if (nums[i] == val) {
        nums.removeAt(i);
      } else {
        output++;
      }
    }

    return output;
  }
}