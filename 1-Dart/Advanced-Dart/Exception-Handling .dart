
// Exception Handling :-

// Sometimes Things Don't Go As Expected In Our Program.
// For Example, We May Try To Convert An Invalid String Into An int.
// In Such Cases, Dart Throws An Exception.
//
// Exception Handling Helps Us Handle These Situations
// Without Letting Our Program Stop Unexpectedly.

// TRY & CATCH :-

// `try` Is Used For Code That May Throw An Exception.
// If Something Goes Wrong Inside `try`,
// Dart Moves To The `catch` Block.
//
// Let's See A Simple Example:

try {
  int age = int.parse('abc');
  print(age);
} catch (e) {
  print('Something Went Wrong!');
}

// Here We Are Trying To Convert 'abc' Into An int.
// Since 'abc' Is Not A Valid Number,
// Dart Throws An Exception.
//
// `catch` Handles That Exception.
// And `e` Gives Us Information About What Went Wrong.

// HANDLING A SPECIFIC EXCEPTION :-

// Sometimes We Already Know What Kind Of Exception
// Can Occur In Our Code.
//
// In That Case, We Can Use `on` To Handle
// A Specific Type Of Exception.

try {
  int age = int.parse('abc');
} on FormatException {
  print('Invalid Number Format!');
}

// `FormatException` Occurs When The Given Value
// Cannot Be Converted Into The Required Format.
//
// Using `on` Helps Us Handle That Exception Separately.

// USING `on` & `catch` TOGETHER :-

// We Can Also Use `on` & `catch` Together.
// `on` Checks The Exception Type,
// While `catch` Gives Us Its Details.

try {
  int age = int.parse('abc');
} on FormatException catch (e) {
  print(e);
}

// Here `e` Contains The Exception Details.
// We Can Use It To Understand What Went Wrong.

// FINALLY :-

// Sometimes We Have Code That We Want To Run
// No Matter Whether An Exception Occurs Or Not.
//
// For That, Dart Provides `finally`.

try {
  int age = int.parse('20');
  print(age);
} catch (e) {
  print('Something Went Wrong!');
} finally {
  print('Program Finished!');
}

// `finally` Runs After `try` & `catch`.
// It Executes Whether An Exception Occurs Or Not.

// THROWING AN EXCEPTION :-

// We Can Also Throw An Exception By Ourself.
// This Is Useful When We Want To Stop Something
// Because A Condition Is Not Valid.
//
// Dart Provides `throw` For This.

void checkAge(int age) {
  if (age < 18) {
    throw Exception('Age Must Be 18 Or Above!');
  }

  print('You Are Eligible!');
}

// checkAge(16);

// Here We Throw An Exception If The Age Is Less Than 18.
// If The Condition Is True,
// The Function Stops At `throw` And Throws An Exception.

// HANDLING OUR OWN EXCEPTION :-

// The Exceptions We Throw Can Also Be Handled
// Using `try` & `catch`.
//
// Let's See How It Works:

try {
  checkAge(16);
} catch (e) {
  print(e);
}

// Here `catch` Handles The Exception
// That We Throw Inside `checkAge()`.
// So We Can Handle It Without Stopping Our Program.

// A SIMPLE RULE :-

// Use `try` When Code May Throw An Exception.
// Use `catch` To Handle An Exception.
// Use `on` When You Want To Handle A Specific Exception.
// Use `finally` For Code That Should Always Run.
// Use `throw` When You Want To Throw An Exception.
