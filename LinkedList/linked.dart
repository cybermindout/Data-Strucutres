class Node {
  int? data;
  Node? next;

  Node(int data) {
    this.data = data;
  }
}

class Slinkedlist {
  Node? head;
  Node? tail;

  void addNode(int data) {
    Node newNode = Node(data);
    head ??= newNode;
    tail?.next = newNode;
    tail = newNode;
  }

  void deleteNode(int data) {
    Node? temp = head;
    Node? prev;
    if (temp != null && temp.data == data) {
      head = temp.next;
      return;
    }
    while (temp != null) {
      if (temp.data == data) {
        break;
      }
      prev = temp;
      temp = temp.next;
    }
    prev!.next = temp!.next;
  }

  void insertNode(int nextTo, int data) {
    Node newNode = Node(data);
    Node? temp = head;
    while (temp != null) {
      if (temp.data == nextTo) break;
    }
    if (temp == null) {
      return;
    }
    if (temp == tail) {
      tail!.next = newNode;
      tail = newNode;
      return;
    }
    newNode.next = temp.next;
    temp.next = newNode;
  }

  void display() {
    head ?? print('empty');
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  Slinkedlist list = new Slinkedlist();

  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.insertNode(10, 40);

  list.deleteNode(20);
  list.display();
}
