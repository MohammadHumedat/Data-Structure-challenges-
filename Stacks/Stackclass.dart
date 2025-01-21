/* Note: in dart language there is no built-in stack syntax but we can use the
consepts of list data structure, we can implement stack-like behavior using a List using
add() as push() and removelast() as pop().

this note from my understanding the dart data structure(Mohammad Hmedat). 
*/

class Stackclass<T> {
  // The T is generic type parameter to allow the stack to wark with any data type.
  final List<T> _stack = [];

//this function to add elements inside stack.
  void push(T item) {
    _stack.add(item);
  }

// this function work as pop() in stack, and i used T return type ,to return the element being removed.
  T pop() {
    if (_stack.isNotEmpty) {
    return _stack.removeLast();
    }
    else{
      throw Exception("Stack is empty");//to handle an error condition when trying to perform an operation that is invalid for an empty stack
    }
    
  }

    bool get isEmpty => _stack.isEmpty; //is a getter that checks if the stack is empty, i can use the built-in function directly but this is best regard to a lot of OOP consept
}
