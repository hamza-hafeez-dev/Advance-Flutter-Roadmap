// Pattern Matching :- Part 2
// Advanced Dart Patterns


// In Part 1 We Learned The Basics Of Patterns.
//
// Now We Will Use Patterns With:
//
// Lists
// Maps
// Records
// Objects
// Nested Data
// for-in
// Null Safety
//
// This Is Where Dart Patterns Become Really Powerful.


// List Pattern :-


// A List Pattern Can Match The Structure Of A List.
//
// We Can Also Extract Its Values Into Variables.

var numbers = [10, 20, 30];

var [first, second, third] = numbers;

print(first);
print(second);
print(third);


// Dart Destructures The List:
//
// 10 -> first
// 20 -> second
// 30 -> third


// Wildcard In List Pattern :-


// We Can Ignore Values We Don't Need
// By Using `_`.

var numbers = [10, 20, 30];

var [_, middle, _] = numbers;

print(middle);


// `_` Means:
// "I Don't Need This Value."


// Rest Element :-


// `...` Can Match The Remaining Elements
// Of A List.

var numbers = [1, 2, 3, 4, 5];

var [first, second, ...remaining] = numbers;

print(first);
print(second);
print(remaining);


// first     -> 1
// second    -> 2
// remaining -> [3, 4, 5]


// Map Pattern :-


// Patterns Can Also Work With Maps.
//
// We Can Match A Key And Extract Its Value.

var user = {
  'name': 'Hamza',
  'age': 20,
};

var {
  'name': name,
  'age': age,
} = user;

print(name);
print(age);


// Map Patterns Use The Keys
// To Get The Values.


// Nested Pattern :-


// Patterns Can Be Nested Inside Other Patterns.
//
// This Is Very Useful When Working
// With Structured Data.

var user = {
  'name': 'Hamza',
  'age': 20,
  'skills': ['Dart', 'Flutter'],
};

var {
  'name': name,
  'age': age,
  'skills': [firstSkill, secondSkill],
} = user;

print(name);
print(age);
print(firstSkill);
print(secondSkill);


// We Destructured:
//
// Map
//   ↓
// List
//   ↓
// Individual Values


// Record Pattern :-


// A Record Can Store Multiple Values Together.
//
// Patterns Can Destructure A Record
// Directly Into Variables.

var user = ('Hamza', 20);

var (name, age) = user;

print(name);
print(age);


// name -> Hamza
// age  -> 20


// Named Record Pattern :-


// Records Can Also Have Named Fields.

var user = (
  name: 'Hamza',
  age: 20,
);

var (:name, :age) = user;

print(name);
print(age);


// `:name` Gets The Value Of The
// Record's `name` Field.
//
// `:age` Gets The Value Of The
// Record's `age` Field.


// Object Pattern :-


// Patterns Can Also Destructure Objects.
//
// Dart Uses The Object's Getters
// To Extract Its Data.

class User {
  final String name;
  final int age;

  User(this.name, this.age);
}

var user = User('Hamza', 20);

var User(:name, :age) = user;

print(name);
print(age);


// Dart Gets:
//
// user.name -> name
// user.age  -> age


// Pattern In For-In :-


// Patterns Can Be Used Directly
// Inside A `for-in` Loop.

var users = [
  ('Hamza', 20),
  ('Ali', 22),
  ('Ahmed', 21),
];

for (var (name, age) in users) {
  print('$name is $age years old');
}


// Every Record Is Automatically
// Destructured Into:
//
// name
// age


// Null-Check Pattern :-


// Dart Patterns Also Work With Null Safety.
//
// `?` Matches A Value Only When
// It Is NOT Null.

String? name = 'Hamza';

switch (name) {
  case var value?:
    print('Name: $value');

  case null:
    print('Name Is Null');
}


// `value?` Means:
//
// Match The Value If It Is Not Null
// And Store It In `value`.


// Null Pattern :-


// We Can Also Match `null` Directly.

String? name;

switch (name) {
  case null:
    print('No Name');

  case String value:
    print('Name: $value');
}


// Patterns Work Naturally
// With Dart's Null Safety.


// JSON-Like Data :-


// Patterns Become Very Useful
// When Working With Structured Data.
//
// For Example, Data From An API.

var response = {
  'user': {
    'name': 'Hamza',
    'age': 20,
  },
};

var {
  'user': {
    'name': name,
    'age': age,
  },
} = response;

print(name);
print(age);


// Instead Of Accessing Every Field
// One By One:
//
// response['user']['name']
//
// We Can Destructure The Data
// Directly With A Pattern.


// Matching Different Data :-


// Patterns Can Match The Shape
// Of Different Data.

Object data = [10, 20, 30];

switch (data) {
  case [int first, int second, int third]:
    print('$first $second $third');

  case (String name, int age):
    print('$name $age');

  case String text:
    print(text);

  default:
    print('Unknown Data');
}


// Dart Can Check:
//
// Is It A List?
// Is It A Record?
// Is It A String?
// Does Its Structure Match?
//
// All With Patterns.


// Pattern Matching With Conditions :-


// Patterns And Conditions Can Be Combined
// To Create Very Expressive Code.

var user = ('Hamza', 20);

var message = switch (user) {
  (String name, >= 18) => '$name is an adult',
  (String name, _) => '$name is under 18',
};

print(message);


// Here We Are Matching:
//
// String name
// Age >= 18
//
// In One Pattern.


// Destructuring In Assignments :-


// Patterns Are Also Useful
// In Variable Assignments.

var user = ('Hamza', 20);

var (name, age) = user;

age = age + 1;

print('$name is now $age');


// We Can Work With The Extracted
// Variables Like Normal Variables.


// Final Summary :-


// Pattern Matching In Dart Can:
//
// Match Constant Values
// Match Types
// Match Ranges
// Combine Conditions
// Destructure Lists
// Destructure Maps
// Destructure Records
// Destructure Objects
// Match Nested Data
// Work With Null Safety
// Work Inside `for-in`
// Work With `if-case`
// Work With `switch` Expressions
//
// Patterns Help Us Write Code That Is:
//
// Cleaner
// Safer
// More Expressive
// Easier To Read
//
// This Is One Of The Powerful
// Features Of Modern Dart.
