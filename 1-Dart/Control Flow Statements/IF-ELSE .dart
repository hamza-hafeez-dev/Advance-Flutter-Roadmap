```dart
// If Else & Switch :-


// IF STATEMENT :-
//
// We Use `if` To Run Code When A Condition Is `true`.
//
// The Condition Must Be A `bool` Expression.

int age = 20;

if (age >= 18) {
  print('You Are An Adult');
}


// IF ELSE :-
//
// We Use `else` When The `if` Condition Is `false`.

bool isLoggedIn = true;

if (isLoggedIn) {
  print('Welcome Back');
} else {
  print('Please Login');
}


// ELSE IF :-
//
// We Use `else if` When We Need To Check
// Multiple Conditions.
//
// Dart Checks The Conditions From Top To Bottom.
// The First `true` Condition Will Run.

int marks = 85;

if (marks >= 90) {
  print('Grade A+');
} else if (marks >= 80) {
  print('Grade A');
} else if (marks >= 70) {
  print('Grade B');
} else if (marks >= 60) {
  print('Grade C');
} else {
  print('Fail');
}


// MULTIPLE CONDITIONS :-
//
// We Can Combine Conditions Using Logical Operators.
//
// `&&` -> AND -> Both Conditions Must Be true
// `||` -> OR  -> At Least One Condition Must Be true
// `!`  -> NOT -> Reverses A Boolean Value

int userAge = 22;
bool hasLicense = true;

if (userAge >= 18 && hasLicense) {
  print('You Can Drive');
}


// NESTED IF :-
//
// We Can Put An `if` Statement Inside Another `if` Statement.
//
// This Is Useful When One Condition Depends On Another.

bool isLogged = true;
bool isAdmin = true;

if (isLogged) {
  if (isAdmin) {
    print('Admin Dashboard');
  }
}


// CONDITIONAL EXPRESSION :-
//
// Dart Also Allows Us To Write A Short `if else`
// When We Need To Choose Between Two Values.
//
// Syntax:
//
// condition ? valueIfTrue : valueIfFalse

int number = 10;

String result = number > 0 ? 'Positive' : 'Negative';

print(result);


// NULL-AWARE CONDITIONAL EXPRESSION :-
//
// We Can Combine `?` With Null Safety
// When Working With Nullable Values.

String? username = null;

String displayName = username ?? 'Guest';

print(displayName);

// `??` Uses The Value On The Left If It Is Not null.
// Otherwise, It Uses The Value On The Right.


// IF WITH NULL SAFETY :-
//
// Nullable Values Can Be Checked Directly.

String? name = 'Hamza';

if (name != null) {
  print(name.length);
}

// After The Null Check,
// Dart Knows That `name` Is Not null Inside The Block.


// IF-CASE :-
//
// Dart Also Allows `if` Statements To Work With Patterns.
//
// This Is Useful When We Want To Check A Value
// And Extract Data At The Same Time.

Object value = 'Dart';

if (value case String text) {
  print(text);
}

// The Pattern Checks If `value` Is A String.
// If It Matches, The Value Is Stored In `text`.


// IF-CASE WITH A CONDITION :-
//
// We Can Add A `when` Clause To Add Another Condition.

Object score = 85;

if (score case int value when value >= 80) {
  print('Excellent Score');
}

// The Pattern Must Match First.
// Then The `when` Condition Must Also Be true.
