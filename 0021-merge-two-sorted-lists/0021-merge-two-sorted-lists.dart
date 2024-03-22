/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
      if(list1 == null){
          return list2;
      }
      if(list2 == null){
          return list1;
      }
      ListNode? mergedList;
     if (list1.val < list2.val) {
      mergedList = list1;
      mergedList.next = mergeTwoLists(list1.next, list2);
    } else {
      mergedList = list2;
      mergedList.next = mergeTwoLists(list1, list2.next);
    }

    return mergedList;
  }
}