// Pattern Matching :-


// Pattern Matching Is Used To Match A Value
// Against A Specific Pattern.
//
// Dart Patterns Can Help Us:
//
// Match Values
// Check Types
// Extract Data
// Write Cleaner Conditions
//
// Patterns Are A Powerful Feature Introduced In Dart 3.


// SIMPLE PATTERN MATCHING

// We Can Use Patterns With `switch`.
//
// `switch` Checks A Value Against Different Patterns.

var status = 'success';

switch (status) {
  case 'success':
    print('Request Completed');

  case 'loading':
    print('Loading...');

  case 'error':
    print('Something Went Wrong');

  default:
    print('Unknown Status');
}


// Dart Checks Each Pattern From Top To Bottom.
// When A Pattern Matches, Its Code Runs.


// SWITCH EXPRESSION

// Dart Also Allows `switch` To Return A Value.
//
// This Is Called A Switch Expression.
//
// It Is Useful When We Want To Calculate
// A Value Based On Different Patterns.

var status = 'success';

var message = switch (status) {
  'success' => 'Request Completed',
  'loading' => 'Loading...',
  'error' => 'Something Went Wrong',
  _ => 'Unknown Status',
};

print(message);


// `_` Is A Wildcard Pattern.
//
// It Matches Anything That Has Not Been
// Matched By The Previous Patterns.


// CONSTANT PATTERN


// A Constant Pattern Matches A Specific Value.

var number = 10;

switch (number) {
  case 5:
    print('Five');

  case 10:
    print('Ten');

  default:
    print('Another Number');
}


// Here `5` And `10` Are Constant Patterns.


// WILDCARD PATTERN

// `_` Is Used When We Do Not Need The Value.
//
// It Means:
// "I Don't Care What The Value Is."

var name = 'Hamza';

switch (name) {
  case 'Ali':
    print('Hello Ali');

  case 'Hamza':
    print('Hello Hamza');

  case _:
    print('Unknown User');
}


// We Can Also Write `_` Directly
// As The Default Pattern.


// TYPE PATTERN

// Patterns Can Match A Value Based On Its Type.
//
// This Is Very Useful When A Variable
// Can Contain Different Types.

Object data = 'Dart';

switch (data) {
  case int number:
    print('Integer: $number');

  case String text:
    print('String: $text');

  case bool value:
    print('Boolean: $value');

  default:
    print('Another Type');
}


// Dart Checks The Type And Also Gives Us
// The Value Inside A Variable.
//
// String text
//      ↑
// Gets The Matched String Value.


// RELATIONAL PATTERNS


// Dart Also Has Relational Patterns.
//
// We Can Match Values Using:
//
// >   Greater Than
// <   Less Than
// >=  Greater Than Or Equal
// <=  Less Than Or Equal
// ==  Equal
// !=  Not Equal

var marks = 85;

var grade = switch (marks) {
  >= 90 => 'A+',
  >= 80 => 'A',
  >= 70 => 'B',
  >= 60 => 'C',
  _ => 'Fail',
};

print(grade);


// This Is Much Cleaner Than Writing
// Many Separate `if-else` Conditions.


// LOGICAL-OR PATTERN

// `||` Means OR.
//
// The Pattern Matches If Any One
// Of The Patterns Matches.

var day = 'Saturday';

var isWeekend = switch (day) {
  'Saturday' || 'Sunday' => true,
  _ => false,
};

print(isWeekend);


// Saturday OR Sunday -> true
// Any Other Day      -> false


// LOGICAL-AND PATTERN

// `&&` Means AND.
//
// Both Conditions Must Match.

var age = 25;

var isAdult = switch (age) {
  >= 18 && <= 60 => true,
  _ => false,
};

print(isAdult);


// The Value Must Be:
// >= 18 AND <= 60


// IF-CASE

// Patterns Are Not Only For `switch`.
//
// Dart Also Allows Patterns With `if`
// Using `if-case`.

var value = 10;

if (value case int number) {
  print('Number: $number');
}


// If The Pattern Matches,
// We Can Use The Matched Value.


// IF-CASE WITH A CONDITION

// We Can Combine A Pattern
// With A Condition.

var age = 20;

if (age case >= 18) {
  print('You Are An Adult');
}


// The Pattern Checks:
// Is The Value Greater Than Or Equal To 18?


// `WHEN` GUARD


// `when` Allows Us To Add An Extra Condition
// After The Pattern Matches.

var user = ('Hamza', 20);

switch (user) {
  case (String name, int age) when age >= 18:
    print('$name is an adult');

  case (String name, int age):
    print('$name is under 18');
}


// First Dart Checks The Pattern:
//
// (String name, int age)
//
// Then `when` Checks:
//
// age >= 18


// SIMPLE DESTRUCTURING

// Pattern Matching Is Not Only About Checking.
//
// Patterns Can Also TAKE DATA APART.
//
// This Is Called Destructuring.

var user = ('Hamza', 20);

var (name, age) = user;

print(name);
print(age);


// Dart Takes The Values From The Record:
//
// 'Hamza' -> name
// 20      -> age


// SWAPPING VALUES

// Destructuring Can Also Make Some Operations
// Very Simple.
//
// For Example, Swapping Two Values.

var first = 'Left';
var second = 'Right';

(first, second) = (second, first);

print(first);
print(second);


// No Temporary Variable Is Needed.


// QUICK SUMMARY

// In Part 1 We Learned:
//
// Constant Patterns
// Wildcard Patterns
// Type Patterns
// Relational Patterns
// Logical-OR Patterns
// Logical-AND Patterns
// `switch` Expressions
// `if-case`
// `when` Guards
// Basic Destructuring
//
// These Are The Building Blocks
// For More Powerful Dart Patterns.
