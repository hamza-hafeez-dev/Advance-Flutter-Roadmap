// SWITCH STATEMENT :-
//
// We Use `switch` When We Want To Match
// A Value Against Different Cases.

String day = 'Monday';

switch (day) {
  case 'Monday':
    print('Start Of The Week');

  case 'Friday':
    print('Weekend Is Near');

  default:
    print('Normal Day');
}

// `case` Defines A Possible Match.
// `default` Runs When No Case Matches.
//
// In Modern Dart, Cases Do Not Need `break`
// For This Style Of Switch.


 // SWITCH WITH MULTIPLE CASES :-
//
// We Can Match Multiple Values In One Case.

String dayName = 'Saturday';

switch (dayName) {
  case 'Saturday' || 'Sunday':
    print('Weekend');

  default:
    print('Weekday');
}


// SWITCH WITH PATTERNS :-
//
// Dart Switch Is More Powerful Than Simple Value Matching.
//
// It Can Match Patterns And Extract Values.

Object data = 100;

switch (data) {
  case int value:
    print('Integer: $value');

  case String value:
    print('String: $value');

  default:
    print('Something Else');
}


// SWITCH WITH WHEN :-
//
// `when` Lets Us Add An Extra Condition
// To A Pattern Case.

int score = 95;

switch (score) {
  case int value when value >= 90:
    print('Excellent');

  case int value when value >= 70:
    print('Good');

  default:
    print('Keep Learning');
}


// SWITCH EXPRESSIONS :-
//
// Dart Also Has `switch` Expressions.
//
// Unlike A Switch Statement,
// A Switch Expression Produces A Value.
//
// This Makes It Very Useful For Assigning Values.

String dayType = 'Sunday';

String message = switch (dayType) {
  'Saturday' || 'Sunday' => 'Weekend',
  _ => 'Weekday',
};

print(message);

// `=>` Returns The Value For That Case.
// `_` Works Like A Default Case.


// SWITCH EXPRESSION WITH PATTERNS :-
//
// Switch Expressions Can Also Use Patterns.

Object value2 = 42;

String type = switch (value2) {
  int _ => 'Integer',
  String _ => 'String',
  double _ => 'Double',
  _ => 'Unknown',
};

print(type);


// RELATIONAL PATTERNS :-
//
// Dart Patterns Can Also Compare Values.
//
// `>`  -> Greater Than
// `<`  -> Less Than
// `>=` -> Greater Than Or Equal To
// `<=` -> Less Than Or Equal To

int age2 = 20;

String category = switch (age2) {
  >= 18 => 'Adult',
  >= 13 => 'Teenager',
  _ => 'Child',
};

print(category);


// LOGICAL PATTERNS :-
//
// We Can Combine Patterns Using `&&` And `||`.

int temperature = 30;

String weather = switch (temperature) {
  >= 30 => 'Hot',
  >= 20 && < 30 => 'Warm',
  _ => 'Cold',
};

print(weather);


// SIMPLE RULE :-
//
// Use `if`          -> For General Conditions.
// Use `else`        -> For The Alternative.
// Use `else if`     -> For Multiple Conditions.
// Use `?:`           -> For A Short Two-Value Choice.
// Use `switch`      -> For Matching A Value Or Pattern.
// Use `switch` expr -> When You Need A Value From The Match.
// Use `when`        -> When A Pattern Needs An Extra Condition.
//
// Dart's Modern `switch` Is More Than Just
// Checking Simple Values.
//
// It Can Work With Patterns, Conditions,
// Destructuring And Expressions.

