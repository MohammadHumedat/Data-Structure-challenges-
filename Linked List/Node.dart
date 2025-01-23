class Node<T> {
  T data;
  Node? next;
  Node(this.data, [this.next]);

  void insertnode(Node head, T data) {
    if (head == null) {
      head = Node(data);
    } else {
      Node pointer = head;

      while (pointer.next != null) {
        pointer = pointer.next!;
      }
      pointer.next = Node(data);
    }
  }

  void printnodes(Node head) {
    Node pointer = head;
    if (pointer.next == null) {
      print(pointer.data);
    } else {
      while (pointer.next != null) {
        print(pointer.data);
        pointer = pointer.next!;
      }
    }
  }
}
