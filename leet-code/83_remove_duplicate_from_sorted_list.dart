class ListNode {
  int val;
  ListNode? next;

  ListNode(this.val, [this.next]);
}

class Solution {
  ListNode? deleteDuplicates(ListNode? head) {
    ListNode? curr = head;

    if (curr == null || curr.next == null) {
      return head;
    }

    while (curr!.next != null) {
      if (curr.val == curr.next!.val) {
        curr.next = curr.next!.next;
      } else {
        curr = curr.next;
      }
    }

    return head;
  }
}

void main() {
  ListNode? createLinkedList(List<int> values) {
    if (values.isEmpty) return null;

    ListNode head = ListNode(values[0]);
    ListNode? current = head;

    for (int i = 1; i < values.length; i++) {
      current!.next = ListNode(values[i]);
      current = current.next;
    }

    return head;
  }

  void printLinkedList(ListNode? head) {
    ListNode? current = head;
    while (current != null) {
      print(current.val);
      current = current.next;
    }
  }

  Solution solution = Solution();
  ListNode? head = createLinkedList([1, 1, 2, 3, 3]);
  ListNode? result = solution.deleteDuplicates(head);
  printLinkedList(result);
}
