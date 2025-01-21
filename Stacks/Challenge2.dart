//Balance the Parentheses
import 'dart:io';
import 'Stackclass.dart';

bool isBalanced(String str) {
  Stackclass<String> stack = Stackclass();
  for (var element in str.split('')) {
    if (element == '(') {
      stack.push(element);
    } else if (element == ')') {
      if (stack.isEmpty) {
        return false;
      }
      stack.pop();
    }
   
  }
   return stack.isEmpty;//// If stack is empty, parentheses are balanced
}

void main() {
  String case1 = "(())"; // balancde
  String case2 = "(()"; // not balanced
  String case3 = "())("; // not balanced
   print("Test 1: $case1 ==> ${isBalanced(case1)}");
  print("Test 2: $case2  ==> ${isBalanced(case2)}");
  print("Test 3: $case3  ==> ${isBalanced(case3)}");
}
