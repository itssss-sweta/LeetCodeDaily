class Solution {
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i <= nums.length - 1; i++) {
      for (int j = 1; j <= nums.length - 1; j++) {
        if(i != j)
        {int x = nums[i] + nums[j];
        if (target == x) {
          return [i,j];
        }}
      }
    }
    return [];
  }
}
