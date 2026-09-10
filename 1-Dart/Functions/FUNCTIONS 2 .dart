// Functions — Advanced :-


// Dart Functions Are More Powerful Than Just
// Reusable Blocks Of Code.
//
// A Function Can Be Stored,
// Passed Around,
// Returned,
// Or Created Without A Name.


// FUNCTIONS AS VALUES :-


// Functions Can Be Stored In Variables.

int add(int a, int b) {
  return a + b;
}

var operation = add;

// print(operation(10, 20));


// FUNCTIONS AS PARAMETERS :-


// A Function Can Be Passed To Another Function.

void calculate(
  int a,
  int b,
  int Function(int, int) operation,
) {
  print(operation(a, b));
}


// calculate(10, 20, add);


// This Is Called A Higher-Order Function.
// It Can Receive Another Function As A Parameter.


// ANONYMOUS FUNCTIONS :-


// A Function Does Not Always Need A Name.

var numbers = [1, 2, 3, 4, 5];

numbers.forEach((number) {
  print(number);
});


// `(number) { ... }` Is An Anonymous Function.
//
// This Is Very Common When Working With
// Lists, Callbacks And Flutter Widgets.


// ARROW FUNCTIONS :-


// For Small Expressions,
// Dart Provides A Short Syntax.

var doubled = numbers.map((number) => number * 2).toList();

// print(doubled);


// CALLBACKS :-


// A Callback Is A Function Passed To Another Function
// That Can Be Called Later.

void processUser(
  String name,
  void Function(String) onComplete,
) {
  print('Processing $name...');

  onComplete(name);
}


// processUser(
//   'Hamza',
//   (name) => print('$name completed!'),
// );


// Flutter Uses This Idea Everywhere:
//
// onPressed
// onTap
// onChanged
// onSubmitted


// TEAR-OFFS :-


// Dart Allows Us To Pass A Function Directly
// Without Creating Another Function.

numbers.forEach(print);


// `print` Is Passed As A Function.
//
// `print`   -> Pass The Function
// `print()` -> Call The Function


// CLOSURES :-


// A Closure Is A Function That Remembers
// Variables From Its Surrounding Scope.

Function makeAdder(int value) {

  return (int number) {
    return number + value;
  };
}

var addFive = makeAdder(5);

// print(addFive(10));


// The Function Remembers `value`
// Even After `makeAdder()` Has Finished.
//
// This Is The Power Of Closures.


// GENERIC FUNCTION :-


// Functions Can Work With Different Types
// By Using Generics.

T getFirst<T>(List<T> items) {
  return items.first;
}

var name = getFirst<String>(['Hamza', 'Ali']);
var number = getFirst<int>([10, 20]);


// The Same Function Works With Different Types
// While Keeping Type Safety.


// ASYNC FUNCTION :-


// Functions Can Also Work With Operations
// That Finish Later.

Future<String> fetchName() async {
  return 'Hamza';
}

Future<void> loadUser() async {

  final name = await fetchName();

  print(name);
}


// `Future` Represents A Value Available Later.
// `async` Allows Us To Use `await`.


// GENERATOR FUNCTION :-


// Dart Can Generate Values One At A Time.

Iterable<int> numbersUpTo(int count) sync* {

  for (int i = 1; i <= count; i++) {
    yield i;
  }
}


// print(numbersUpTo(5).toList());


// `yield` Produces Values Lazily.
//
// This Can Be Useful When We Don't Need
// To Create The Whole Collection At Once.


// CALLABLE OBJECTS :-


// A Class Can Behave Like A Function
// By Defining The `call()` Method.

class Multiplier {

  final int value;

  Multiplier(this.value);

  int call(int number) {
    return number * value;
  }
}

var multiplyByTwo = Multiplier(2);

// print(multiplyByTwo(10));


// The Object Can Now Be Called Like A Function.
//
// This Is A Unique And Powerful Dart Feature.


// ADVANCED FUNCTION SUMMARY :-


// In Advanced Functions We Learned:
//
// 1. Functions As Values
// 2. Higher-Order Functions
// 3. Anonymous Functions
// 4. Callbacks
// 5. Tear-Offs
// 6. Closures
// 7. Generic Functions
// 8. Async Functions
// 9. Generator Functions
// 10. Callable Objects


// These Features Are Used Heavily In Flutter,
// Especially For Callbacks, List Operations,
// APIs, State Management And Async Code.
