import 'Stackclass.dart';

void reverseList(List<dynamic> s1) {
  Stackclass<dynamic> stack = Stackclass();//create an instance of Stackclass.
  for (var item in s1) {// Push all elements onto the stack
    stack.push(item);
  }

  while(!stack.isEmpty){//// Pop elements from the stack to print in reverse order
    print(stack.pop());
  }
}

void main() {
  // example of list
  List<dynamic> s1 = [10,20,30,40,50];
  print('the list ${s1}');
  print('the reversed list: ');
  reverseList(s1);
}
