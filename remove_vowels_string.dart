void main() {
  String name = 'Sandra Mathew hello';
  Stack stack = Stack();
  var value = stack.vowelCheck(name: name, stack: stack);
  print("Value : $value");
}

class Stack {
  StackNode? top;
  late int length;

  Stack() {
    this.length = 0;
  }
  push(dynamic value) {
    StackNode node = StackNode(data: value);
    if (top == null) {
      top = node;
      return;
    } else {
      node.next = top;
      top = node;
    }
    length++;
  }

  pop() {
    if (top == null) {
      return;
    } else {
      top = top?.next;
    }
  }

  vowelCheck({required Stack stack, required String name}) {
    var vowels = ['a', 'e', 'i', 'o', 'u'];
    for (var i = 0; i < name.length; i++) {
      stack.push(name[i]);
    }
    String value = '';
    StackNode? topNode = top;

    while (topNode != null) {
      if (!vowels.contains(topNode.data.toString().toLowerCase())) {
        value = value + topNode.data;
      }
      topNode = topNode.next;
    }
    return value.split('').reversed.join('');
  }
}

class StackNode {
  dynamic data;
  StackNode? next;
  StackNode({required this.data});
  StackNode.all({required this.data, required this.next});
}
