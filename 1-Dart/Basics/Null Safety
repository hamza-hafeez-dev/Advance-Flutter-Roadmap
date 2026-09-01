```dart
// Null Safety :-

// Null Safety Helps Us Prevent Errors Caused By `null` Values !
//
// In Dart, A Variable Cannot Store `null` By Default.
// We Have To Explicitly Tell Dart If A Variable Can Be `null`.


// NON-NULLABLE VARIABLES :-

// By Default, Variables In Dart Cannot Be `null`.

String name = 'Hamza';
int age = 20;

// name = null; ❌
// age = null;  ❌

// Dart Does Not Allow This Because These Variables
// Are Not Allowed To Store `null`.


// NULLABLE VARIABLES :-

// If We Want A Variable To Store `null`,
// We Use `?` After The Data Type.

String? username;

int? userAge;

// Now These Variables Can Store A Value Or `null`.

username = 'Hamza';
userAge = 20;

username = null;
userAge = null;


// CHECKING FOR NULL :-

// Before Using A Nullable Variable,
// We Should Check If It Contains A Value.

String? city = 'Bahawalpur';

if (city != null) {
  print(city);
}

// If city is null, The Code Inside The `if`
// Will Not Run.


// NULL AWARE ACCESS `?.` :-

// We Can Use `?.` To Safely Access A Nullable Value.

String? language = 'Dart';

print(language?.length);

// If language is not null, Dart Gets Its Length.
// If language is null, It Returns null Instead Of Causing An Error.


// NULL COALESCING `??` :-

// `??` Lets Us Provide A Default Value
// When A Variable Is `null`.

String? country;

String userCountry = country ?? 'Pakistan';

print(userCountry);

// If country has a value -> That value is used.
// If country is null -> 'Pakistan' is used.


// NULL AWARE ASSIGNMENT `??=` :-

// `??=` Assigns A Value Only If The Variable Is `null`.

String? name2;

name2 ??= 'Hamza';

print(name2);

// If name2 is null, 'Hamza' is assigned.
// If name2 already has a value, Nothing changes.


// NULL ASSERTION OPERATOR `!` :-

// `!` Tells Dart That We Are Sure A Value Is Not null.

String? username2 = 'Hamza';

print(username2!);

// We are telling Dart:
// "I Know This Variable Is Not null."
//
// ⚠️ Be Careful With `!`.
// If The Value Is Actually null, The Program Can Crash.


// LATE VARIABLES :-

// `late` Tells Dart That We Will Give The Variable A Value Later.

late String email;

email = 'hamza@example.com';

print(email);

// We Must Give `email` A Value Before Using It.
//
// ⚠️ If We Try To Use A `late` Variable Before Giving It A Value,
// Dart Will Throw An Error.


// SIMPLE RULE :-
//
// Use `Type`      -> When The Variable Cannot Be null.
// Use `Type?`     -> When The Variable Can Be null.
// Use `??`        -> To Give A Default Value.
// Use `?.`        -> To Safely Access A Nullable Value.
// Use `!`         -> Only When You Are Sure The Value Is Not null.
// Use `late`      -> When You Will Initialize The Variable Later.


// WHY NULL SAFETY IS IMPORTANT :-

// Null Safety Helps Us Find Possible Errors
// Before Our Program Runs.
//
// It Makes Dart Code Safer And Helps Prevent
// Common `null` Related Errors.
```
