// Variables & Data Type :-

// Variables Are Used To Store Data In Our Program !
// We use Data Types in Dart To Define Variables.
//
// COMMON DATA TYPES :-
// Dart has several built-in types.

// String -> Text
// int    -> Whole Numbers
// double -> Decimal numbers
// num    -> Can contain int or double
// bool   -> true or false
// List   -> Ordered collection of values
// Set    -> Collection of unique values
// Map    -> Key-value pairs

// Declearing Variables With DataTypes:

// First ( DataType ) Then ( Name ) & Then ( Value )

String name = 'Hamza';

// String Is Data Type (name) is Varaiable Name & 'Hamza' is Its Value
// We Also Have Same With Other Types

int age = 20;
// age stores an integer value.

double height = 5.9;
// height stores a decimal number.

bool isDeveloper = true;
// isDeveloper stores either true or false.

num rating = 4.5;
// num can store both integers and decimal numbers.

// WE Also have TYPE INFERENCE In Dart

// TYPE INFERENCE WITH `var`

// Dart can automatically figure out the type of a variable.
// Because we assign a String here, Dart knows that `country`
// is a String.

var country = 'Pakistan';
// Its a String
var rollNumber = 12;
// Its a int

// A simple rule:
//
// Use an explicit type when it makes your code clearer.
// Use `var` when Dart's inferred type is obvious.

// TYPE CONVERSION

// Sometimes data comes in a different type than we need.
// For example, user input often comes as a String.
// We can convert it into an int.

String ageText = '20';

int convertedAge = int.parse(ageText);

// print(convertedAge);

// Convert an String to int:

// This Method also Work on Other Data type.

// Dart provides `runtimeType` to see the type of a value.

var language = 'Dart';

// print(language.runtimeType);

var version = 3;

// print(version.runtimeType);

var isLearning = true;

// print(isLearning.runtimeType);

