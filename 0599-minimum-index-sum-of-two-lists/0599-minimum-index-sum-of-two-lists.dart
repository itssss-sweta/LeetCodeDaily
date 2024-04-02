class Solution {
  List<String> findRestaurant(List<String> list1, List<String> list2) {
   String sameString;
    List<String> same = [];
    int? sum;
    Map<String, int> mapping = {};
    for (int i = 0; i < list1.length; i++) {
      for (int j = 0; j < list2.length; j++) {
        if (list1[i] == list2[j]) {
          sameString = (list1[i]);
          sum = (i + j);
          final map = {sameString: sum};
          mapping.addAll(map);
        }
      }
    }

    if (mapping.isEmpty) {
      return [];
    }
    int minValue = mapping.values.first;
    for (var value in mapping.values) {
      if (value < minValue) {
        minValue = value;
      }
    }
    mapping.forEach((key, value) {
      if (value == minValue) {
        same.add(key);
      }
    });
    return same;
  }
}