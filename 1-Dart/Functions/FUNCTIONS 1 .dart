// Functions :-


// Functions Are Used To Group A Block Of Code
// That Performs A Specific Task.
//
// Instead Of Writing The Same Code Again And Again,
// We Can Put That Code Inside A Function
// And Reuse It Whenever We Need It.


// BASIC FUNCTION :-


// A Function Usually Has:
//
// Return Type -> Function Name -> Parameters -> Function Body


void sayHello() {
  print('Hello, Hamza!');
}


// `void` Is The Return Type.
// `sayHello` Is The Function Name.
// `()` Contains Parameters.
// `{}` Contains The Code That Runs When The Function Is Called.


// CALLING A FUNCTION :-


// Defining A Function Does Not Run It.
// We Need To Call The Function.


// sayHello();


// A Function Can Be Called Multiple Times.


// sayHello();
// sayHello();
// sayHello();


// FUNCTION WITH PARAMETERS :-


// Parameters Allow Us To Pass Data Into A Function.
// This Makes A Function More Reusable.

void greet(String name) {
  print('Hello, $name!');
}


// greet('Hamza');
// greet('Ali');


// `name` Is A Parameter.
// `'Hamza'` Is An Argument Passed To The Function.


// FUNCTION WITH MULTIPLE PARAMETERS :-


void introduce(String name, int age) {
  print('My name is $name and I am $age years old.');
}


// introduce('Hamza', 20);


// We Can Pass Different Values Every Time
// We Call The Same Function.


// RETURNING A VALUE :-


// A Function Can Return A Value Instead Of
// Only Performing An Action.

int add(int a, int b) {
  return a + b;
}


int result = add(10, 20);


// print(result);


// `int` Means This Function Returns An Integer.
// `return` Sends A Value Back To The Caller.


// RETURNING DIFFERENT TYPES :-


// A Function Can Return Any Dart Type.

String getName() {
  return 'Hamza';
}


double getPrice() {
  return 99.99;
}


bool isDeveloper() {
  return true;
}


// print(getName());
// print(getPrice());
// print(isDeveloper());


// FUNCTIONS WITH EXPRESSIONS :-


// Dart Allows A Shorter Syntax For Functions
// That Contain Only One Expression.

int multiply(int a, int b) => a * b;


// print(multiply(5, 4));


// This:

int square(int number) {
  return number * number;
}


// Can Be Written As:

int squareShort(int number) => number * number;


// `=> expression` Is Called Arrow Syntax.
// It Is A Shorthand For A Function That Returns An Expression.
//
// `=> expression` Is Basically:
//
// `{ return expression; }`


// OPTIONAL POSITIONAL PARAMETERS :-


// We Can Make Parameters Optional
// By Putting Them Inside `[]`.

String say(String from, String message, [String? device]) {

  var result = '$from says $message';

  if (device != null) {
    result = '$result with a $device';
  }

  return result;
}


// print(say('Hamza', 'Hello'));
// print(say('Hamza', 'Hello', 'Phone'));


// `device` Is An Optional Positional Parameter.
// We Can Call The Function With Or Without It.
//
// Optional Parameters That Don't Have A Default Value
// Must Be Nullable.


// OPTIONAL POSITIONAL PARAMETER WITH DEFAULT VALUE :-


String sendMessage(
  String name,
  String message, [
  String device = 'Phone',
]) {
  return '$name sent "$message" using $device';
}


// print(sendMessage('Hamza', 'Hello'));
// print(sendMessage('Hamza', 'Hello', 'Laptop'));


// A Default Value Is Used When The Argument Is Not Provided.


// NAMED PARAMETERS :-


// Named Parameters Are Written Inside `{}`.
// They Make Function Calls Easier To Read.

void createUser({
  String? name,
  int? age,
}) {
  print('Name: $name');
  print('Age: $age');
}


// createUser(
//   name: 'Hamza',
//   age: 20,
// );


// We Pass Named Arguments Using:
//
// parameterName: value


// REQUIRED NAMED PARAMETERS :-


// A Named Parameter Can Be Made Required
// By Using The `required` Keyword.

void createProfile({
  required String name,
  required int age,
}) {
  print('Name: $name');
  print('Age: $age');
}


// createProfile(
//   name: 'Hamza',
//   age: 20,
// );


// `required` Means The Caller Must Provide That Argument.
//
// This Is Very Common In Flutter.
// Many Flutter Widgets Use Required And Named Parameters.


// NAMED PARAMETERS WITH DEFAULT VALUES :-


void showSettings({
  bool darkMode = false,
  bool notifications = true,
}) {
  print('Dark Mode: $darkMode');
  print('Notifications: $notifications');
}


// showSettings();
// showSettings(darkMode: true);


// If We Don't Provide A Value,
// Dart Uses The Default Value.


// PARAMETER ORDER :-


// Positional Parameters Are Passed By Position.

void user(String name, int age) {
  print('$name is $age years old.');
}


// user('Hamza', 20);


// Named Parameters Are Passed By Name.

void account({
  required String username,
  required String email,
}) {
  print(username);
  print(email);
}


// account(
//   email: 'hamza@example.com',
//   username: 'hamza',
// );


// Notice That The Order Does Not Matter
// For Named Arguments.


// NULLABLE PARAMETERS :-


// Dart Has Sound Null Safety.
// If A Parameter Can Be Null,
// We Explicitly Mark Its Type With `?`.

String getDisplayName(String? name) {
  return name ?? 'Guest';
}


// print(getDisplayName('Hamza'));
// print(getDisplayName(null));


// `String?` Means:
//
// String OR null
//
// `??` Gives A Default Value If The Value Is Null.


// FUNCTIONS WITH COLLECTIONS :-


// Functions Can Also Work With Lists,
// Sets, Maps And Other Dart Collections.

int calculateTotal(List<int> prices) {
  return prices.reduce((a, b) => a + b);
}


// print(calculateTotal([100, 200, 300]));


// The Function Takes A List Of Integers
// And Returns Their Total.


// GENERIC FUNCTIONS :-


// A Function Can Be Made Generic
// So It Can Work With Different Types.

T getFirst<T>(List<T> items) {
  return items.first;
}


String firstName = getFirst<String>(
  ['Hamza', 'Ali', 'Ahmed'],
);


int firstNumber = getFirst<int>(
  [10, 20, 30],
);


// The Same Function Can Work With Different Types.
//
// `T` Represents A Type That Will Be Provided Later.
//
// This Gives Us Reusable And Type-Safe Functions.


// REAL-WORLD FUNCTION :-


// Functions Become More Useful When They Represent
// Real Logic From An Application.

double calculateDiscount({
  required double price,
  required double discount,
}) {
  return price - (price * discount);
}


double finalPrice = calculateDiscount(
  price: 1000,
  discount: 0.20,
);


// print(finalPrice);


// This Function:
//
// Takes A Price
// Takes A Discount
// Calculates The Final Price
// Returns The Result


// FUNCTION COMPOSITION :-


// One Function Can Use Another Function.

double calculateTax(double price) {
  return price * 0.15;
}


double calculateFinalPrice(double price) {
  final tax = calculateTax(price);

  return price + tax;
}


// print(calculateFinalPrice(1000));


// Breaking Logic Into Small Functions
// Makes Code Easier To Read,
// Reuse And Maintain.


// MAIN FUNCTION :-


// Every Dart Application Starts Execution
// From The Top-Level `main()` Function.

void main() {
  print('Dart Functions');
}


// `main()` Is The Entry Point Of A Dart Application.
//
// It Can Also Receive Command-Line Arguments:

void mainWithArguments(List<String> arguments) {
  print(arguments);
}


// In A Normal Dart Application,
// The Entry Point Is Written As:
//
// void main() { }

// Functions Are One Of The Most Important Parts Of Dart.
