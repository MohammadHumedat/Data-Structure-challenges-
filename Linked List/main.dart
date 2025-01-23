import 'Node.dart';

void main() {
  Node head = Node('head');
  head.insertnode(head, 'first node');
  head.insertnode(head, 'first node');
  head.insertnode(head, 'first node');
  head.insertnode(head, 'secound node');
  head.insertnode(head, 'third node');
  head.insertnode(head, '4th node');
  head.insertnode(head, '5th node');
  head.insertnode(head, '6th');

  // to finf middle node
  findMiddleNode(head);
  //to reverseLinkedList
  reverseLinkedList(head);
  //to remove All Occurrences
  removeAllOccurrences(head, 'first node');
  head.printnodes(head);
}

// Challenge 1: Print in Reverse
void printInReverse(Node? head) {
  if (head == null) return;
  printInReverse(head.next);
  print(head.data);
}

// Challenge 2: Find the Middle Node
void findMiddleNode<T>(Node<T>? head) {
  Node<T>? first = head;
  Node<T>? secound = head;

  while (first != null && first.next != null) {
    secound = secound!.next as Node<T>?;
    first = first.next!.next as Node<T>?;
  }

  print(secound?.data);
}

// Challenge 3: Reverse a Linked List
Node<T>? reverseLinkedList<T>(Node<T>? head) {
  Node<T>? previous = null;
  Node<T>? current = head;
  Node<T>? next;

  while (current != null) {
    next = current.next as Node<T>?;
    current.next = previous;
    previous = current;
    current = next;
  }

  return previous;
}

// Challenge 4: Remove All Occurrences
Node<T>? removeAllOccurrences<T>(Node<T>? head, T value) {
  while (head != null && head.data == value) {
    head = head.next as Node<T>?;
  }

  Node<T>? current = head;

  while (current != null && current.next != null) {
    if (current.next!.data == value) {
      current.next = current.next!.next;
    } else {
      current = current.next as Node<T>?;
    }
  }

  return head;
}
