// Lists In Dart :-


// A List Is Used To Store Multiple Values In One Variable.
// Lists In Dart Are Ordered Collections Of Values.
//
// Each Value In A List Has An Index.
// The First Index Is `0`.


// CREATING A LIST :-


// We Can Create A List Using `[]`.

List<String> names = ['Hamza', 'Ali', 'Ahmed'];

List<int> numbers = [10, 20, 30, 40];


// Dart Also Supports Type Inference:

var languages = ['Dart', 'Java', 'Kotlin'];

// Dart Knows `languages` Is A List Of Strings.



// ACCESSING LIST VALUES :-


var fruits = ['Apple', 'Banana', 'Mango'];


// print(fruits[0]);
// Apple

// print(fruits.length);
// 3


// We Can Change A List Element Using Its Index.

fruits[1] = 'Orange';

// [Apple, Orange, Mango]



// ADDING & REMOVING VALUES :-


fruits.add('Grapes');

// [Apple, Orange, Mango, Grapes]


fruits.remove('Orange');

// [Apple, Mango, Grapes]


// `.addAll()` Adds Multiple Values.

fruits.addAll(['Peach', 'Watermelon']);



// LOOPING THROUGH A LIST :-


for (var fruit in fruits) {
  // print(fruit);
}


// Dart Also Provides `.forEach()`:

fruits.forEach((fruit) {
  // print(fruit);
});



// POWER OF DART COLLECTIONS :-


// Dart Allows Us To Build Lists Using `if` And `for`
// Directly Inside A Collection.

var isLoggedIn = true;

var menu = [
  'Home',
  'Profile',
  if (isLoggedIn) 'Logout',
];

// If `isLoggedIn` Is True,
// `Logout` Is Added To The List.



// COLLECTION `for` :-


var numbersList = [1, 2, 3, 4];

var squaredNumbers = [
  for (var number in numbersList)
    number * number,
];

// [1, 4, 9, 16]



// SPREAD OPERATOR :-


// The Spread Operator `...` Adds All Elements
// From One List Into Another List.

var first = [1, 2, 3];
var second = [4, 5, 6];

var combined = [
  ...first,
  ...second,
];

// [1, 2, 3, 4, 5, 6]


// NULL-AWARE SPREAD `...?` :-


// If A List Can Be Null,
// We Can Safely Spread It Using `...?`.

List<int>? optionalNumbers;

var safeList = [
  0,
  ...?optionalNumbers,
  100,
];

// If `optionalNumbers` Is Null,
// Nothing Is Added From It.



// FILTERING & TRANSFORMING :-


// Dart Lists Are Also Iterables,
// So We Can Use Powerful Methods Like
// `where()` And `map()`.

var values = [1, 2, 3, 4, 5, 6];

var evenNumbers = values
    .where((number) => number.isEven)
    .toList();

// [2, 4, 6]


var doubledNumbers = values
    .map((number) => number * 2)
    .toList();

// [2, 4, 6, 8, 10, 12]



// LIST PATTERNS :-


// Dart Also Supports List Patterns
// For Extracting Values From A List.

var user = ['Hamza', 20];

var [name, age] = user;


// name = 'Hamza'
// age = 20


// We Can Capture The Remaining Values:

var data = [1, 2, 3, 4, 5];

var [firstValue, secondValue, ...remaining] = data;


// firstValue = 1
// secondValue = 2
// remaining = [3, 4, 5]



// CONST LIST :-


// A `const` List Cannot Be Changed.

const fixedNumbers = [1, 2, 3];

// fixedNumbers.add(4);

// This Causes An Error.



// FINAL LIST :-


// `final` Prevents The Variable From Being
// Assigned To Another List,
// But The Existing List Can Still Change.

final scores = [10, 20];

scores.add(30);

// This Works.



// FINAL NOTE :-


// Lists Are More Than Just A Collection Of Values.
//
// Dart Gives Us:
//
// - Type-Safe Lists
// - Type Inference
// - Collection `if` And `for`
// - Spread Operators
// - Null-Aware Spread
// - Powerful Iterable Methods
// - List Patterns
// - `final` And `const`
//
// These Features Make Lists Very Powerful
// For Real Flutter Applications.
