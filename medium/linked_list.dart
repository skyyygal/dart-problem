class ListNode {
  int val;
  ListNode? next;
  ListNode(this.val, [this.next]);
}

void main() {
  ListNode l1 = ListNode(2, ListNode(4, ListNode(3)));
  ListNode l2 = ListNode(5, ListNode(6, ListNode(4)));
  // ListNode n1 = ListNode(2, ListNode(4, ListNode(3)));
  // print(n1.val);
  // print(n1.next!.val);
  // print(n1.next!.next!.val);
  // ListNode? curr = n1;
  // while (curr != null) {
  // print(curr.val);
  // curr = curr.next;
  // }
  ListNode? result = addNumbers(l1, l2);

  while (result != null) {
    print(result.val);
    result = result.next;
  }
}

ListNode? addNumbers(ListNode? l1, ListNode? l2) {
  int carry = 0;
  ListNode dummy = ListNode(0);
  ListNode current = dummy;

  while (l1 != null || l2 != null || carry != 0) {
    int val1 = l1 != null ? l1.val : 0;
    int val2 = l2 != null ? l2.val : 0;
    int sum = val1 + val2 + carry;
    carry = sum ~/ 10;
    int curr = sum % 10;
    l1 = l1?.next;
    l2 = l2?.next;

    current.next = ListNode(curr);
    current = current.next!;
  }

  return dummy.next;
}
