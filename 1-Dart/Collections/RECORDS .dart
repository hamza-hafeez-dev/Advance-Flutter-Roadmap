// Records :-


// Records Are Used To Group Multiple Values Into One Object.
// A Record Can Store Different Data Types Together.

// Unlike Lists, Records Are:
// Fixed-Sized
// Typed
// Heterogeneous (Can Store Different Types)

// Records Are Available In Dart 3.0+.



// CREATING A RECORD :-


// We Can Create A Record Using Parentheses ( ).

var user = ('Hamza', 20, true);

// 'Hamza' -> String
// 20      -> int
// true    -> bool


// A Record Can Store Different Types Of Values
// In A Single Object.



// ACCESSING RECORD VALUES :-


// Positional Values Are Accessed Using $
// Followed By Their Position.

print(user.$1);
// $1 -> First Value

print(user.$2);
// $2 -> Second Value

print(user.$3);
// $3 -> Third Value


// Dart Knows The Type Of Each Field.

String name = user.$1;
int age = user.$2;
bool isDeveloper = user.$3;



// NAMED FIELDS :-


// Records Can Also Have Named Fields.
// Named Fields Make The Data Easier To Understand.

var person = (
  name: 'Hamza',
  age: 20,
  country: 'Pakistan',
);


// Accessing Named Fields:

print(person.name);
print(person.age);
print(person.country);


// Named Fields Are Accessed Directly By Their Name.



// POSITIONAL + NAMED FIELDS :-


// We Can Use Positional And Named Fields
// In The Same Record.

var developer = (
  'Hamza',
  age: 20,
  isDeveloper: true,
);


// Positional Field:
print(developer.$1);


// Named Fields:
print(developer.age);
print(developer.isDeveloper);



// RECORD TYPES :-


// Dart Allows Us To Define The Exact Type Of A Record.

(String, int) userInfo = ('Hamza', 20);


// String -> First Field
// int    -> Second Field


print(userInfo.$1);
print(userInfo.$2);


// We Can Also Give Names To Positional Fields.
// These Names Are Only For Documentation.

(String name, int age) anotherUser = ('Hamza', 20);



// RECORDS ARE IMMUTABLE :-


// Records Are Immutable.
// Their Fields Cannot Be Changed After Creation.

// anotherUser.$1 = 'Ali'; ❌


// Records Do Not Have Setters For Their Fields.



// RECORD EQUALITY :-


// Dart Automatically Supports == And hashCode
// For Records.

// Two Records Are Equal When They Have:
// Same Shape
// And Same Field Values

var first = ('Hamza', 20);
var second = ('Hamza', 20);

print(first == second);
// true


// Dart Automatically Handles Record Equality
// Based On Their Fields.



// RECORDS WITH FUNCTIONS :-


// One Of The Most Powerful Uses Of Records
// Is Returning Multiple Values From A Function.

// Instead Of Creating A Class For A Small Result,
// We Can Simply Return A Record.

(String, int) getUser() {
  return ('Hamza', 20);
}

var userData = getUser();

print(userData.$1);
print(userData.$2);


// A Function Can Return Multiple Values
// In One Record.



// DESTRUCTURING RECORDS :-


// Dart Patterns Allow Us To Destructure A Record.
// This Means We Can Take Its Values
// And Store Them In Separate Variables.

var (userName, userAge) = getUser();

print(userName);
print(userAge);


// Instead Of:

var data = getUser();

var name = data.$1;
var age = data.$2;


// We Can Simply Use Destructuring:

var (name, age) = getUser();


// This Is One Of The Powerful Features
// Introduced With Dart 3.



// DESTRUCTURING NAMED FIELDS :-


// Named Record Fields Can Also Be Destructured.

({String name, int age}) getUserInfo() {
  return (
    name: 'Hamza',
    age: 20,
  );
}


final (:name, :age) = getUserInfo();

print(name);
print(age);


// Dart Can Read The Named Fields
// And Create Variables From Them.



// RECORDS IN LISTS :-


// Records Can Also Be Stored Inside Collections.

var users = [
  ('Hamza', 20),
  ('Ali', 22),
  ('Ahmed', 21),
];


for (var (name, age) in users) {
  print('$name is $age years old');
}


// Here We Use:
// List -> To Store Multiple Records
// Record -> To Group Related Values
// Pattern -> To Destructure Each Record



// RECORDS VS MAPS :-


// A Map Stores Key-Value Pairs.

var userMap = {
  'name': 'Hamza',
  'age': 20,
};


// A Record Is More Strictly Typed.

var userRecord = (
  name: 'Hamza',
  age: 20,
);


// Records Are Useful When The Structure Is Known
// And The Data Does Not Need To Change.



// RECORDS VS CLASSES :-


// Use A Record When You Only Need To Group Data.

// Use A Class When You Need:
// Methods
// Constructors
// Behavior
// More Complex Object Structure


// Records Are Great For Small Data Structures
// Without Creating A New Class.



// POWER OF DART :-


// Records Give Dart A Simple Way To Work
// With Multiple Values.

// They Can Be:
// Stored In Variables
// Returned From Functions
// Stored In Lists, Maps And Sets
// Nested Inside Other Records
// Destructured Using Patterns
// Strongly Typed
// Compared Using ==


// Records + Patterns Make Dart 3
// Much More Powerful For Working With Structured Data.



// SIMPLE RULE :-


// Use Records When You Need To Group
// A Few Related Values Together.

// Use A Class When Your Data Needs
// More Structure And Behavior.
