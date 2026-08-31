// Operators :-
//
// Operators Are Used To Perform Operations On Values !
//
// COMMON OPERATORS :-
//
// Arithmetic Operators
// +  -> Addition
// -  -> Subtraction
// *  -> Multiplication
// /  -> Division
// %  -> Remainder
// ~/ -> Integer Division
//
// Comparison Operators
// == -> Equal to
// != -> Not equal to
// >  -> Greater than
// <  -> Less than
// >= -> Greater than or equal to
// <= -> Less than or equal to
//
// Logical Operators
// && -> AND
// || -> OR
// !  -> NOT


// ARITHMETIC OPERATORS
//
// Used To Perform Mathematical Operations.

int a = 10;
int b = 3;

int add = a + b;
// 10 + 3 = 13

int subtract = a - b;
// 10 - 3 = 7

int multiply = a * b;
// 10 * 3 = 30

double divide = a / b;
// 10 / 3 = 3.333...

int remainder = a % b;
// 10 % 3 = 1

int wholeDivide = a ~/ b;
// 10 ~/ 3 = 3


// ASSIGNMENT OPERATORS
//
// Used To Give Or Update A Value In A Variable.

int score = 10;

score = 20;
// Give A New Value

score += 5;
// Same As: score = score + 5

score -= 5;
// Same As: score = score - 5

score *= 2;
// Same As: score = score * 2


// COMPARISON OPERATORS
//
// Used To Compare Two Values.
//
// The Result Is Always `true` Or `false`.

int age = 20;

bool sameAge = age == 20;
// true

bool differentAge = age != 18;
// true

bool isAdult = age >= 18;
// true

bool isYoung = age < 30;
// true


// LOGICAL OPERATORS
//
// Used To Combine Multiple Conditions.

int userAge = 20;
bool hasId = true;

// AND (&&)
//
// Both Conditions Must Be True.

bool canEnter = userAge >= 18 && hasId;
// true


// OR (||)
//
// At Least One Condition Must Be True.

bool isWeekend = false;
bool isHoliday = true;

bool canRelax = isWeekend || isHoliday;
// true


// NOT (!)
//
// Changes true To false
// And false To true.

bool isLoggedIn = true;

bool isNotLoggedIn = !isLoggedIn;
// false


// INCREMENT & DECREMENT
//
// ++ -> Increase By 1
// -- -> Decrease By 1

int count = 5;

count++;
// count is now 6

count--;
// count is now 5


// TERNARY OPERATOR
//
// A Short Way To Write A Simple If-Else.
//
// condition ? valueIfTrue : valueIfFalse

int userAge2 = 20;

String status = userAge2 >= 18 ? 'Adult' : 'Minor';

// If age is 18 or more -> Adult
// Otherwise -> Minor


// NULL-AWARE OPERATORS
//
// ?? -> Use Another Value If The First Value Is Null
// ??= -> Give A Value If The Variable Is Null

String? username;

String name = username ?? 'Guest';
// If username is null, 'Guest' will be used.

username ??= 'Hamza';
// If username is null, it will become 'Hamza'.


// TYPE CHECKING
//
// `is` -> Checks The Type
// `is!` -> Checks If It Is NOT The Type

var language = 'Dart';

bool isString = language is String;
// true

bool isNotInt = language is! int;
// true
