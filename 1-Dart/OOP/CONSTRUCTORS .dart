
// Constructors :-
//
// Constructors Are Used To Create And Initialize Objects In Dart.
//
// When We Create An Object From A Class,
// Its Constructor Is Called Automatically.
//
// Constructors Are Useful When We Want To Give
// Initial Values To An Object.
//
//
// BASIC CONSTRUCTOR :-
//
// A Constructor Has The Same Name As The Class.
//
// Example:

class Student {
  String name = '';
  int age = 0;

  Student() {
    // This Is A Constructor.
    // It Runs When We Create A Student Object.
  }
}


// Creating An Object:

var student = Student();


// Here:
// `Student()` Calls The Constructor.
// `student` Stores The Created Object.


// CONSTRUCTOR WITH PARAMETERS :-
//
// We Can Pass Values To A Constructor
// When Creating An Object.
//
// This Is One Of The Most Common Ways
// To Initialize An Object.

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}


// `this.name` Means:
// Store The Given Value In The `name` Field
// Of The Current Object.
//
// Same For `this.age`.

var person = Person('Hamza', 20);


// Now The Object Has Its Initial Values.
//
// person.name -> Hamza
// person.age  -> 20


// THIS PARAMETER :-
//
// Dart Provides A Short And Clean Syntax
// For Initializing Instance Variables.
//
// Instead Of Writing:

class User {
  String name;
  int age;

  User(String name, int age) {
    this.name = name;
    this.age = age;
  }
}


// We Can Write:

class User {
  String name;
  int age;

  User(this.name, this.age);
}


// This Is One Of The Powerful Features Of Dart.
// It Makes Constructor Code Shorter And Cleaner.


// NAMED CONSTRUCTORS :-
//
// Dart Allows A Class To Have Multiple Constructors.
//
// We Can Give Constructors Different Names
// To Create Objects In Different Ways.
//
// These Are Called Named Constructors.

class Account {
  String username;
  int age;

  Account(this.username, this.age);

  Account.guest()
      : username = 'Guest',
        age = 0;
}


// Now We Can Create An Account In Two Ways:

var account1 = Account('Hamza', 20);

var account2 = Account.guest();


// `Account()` Is The Default Constructor.
//
// `Account.guest()` Is A Named Constructor.
//
// Named Constructors Are Useful When A Class
// Has More Than One Meaningful Way
// To Create An Object.


// INITIALIZER LIST :-
//
// Dart Provides An Initializer List
// For Initializing Instance Variables
// Before The Constructor Body Runs.
//
// It Comes After The Constructor Parameters
// And Before The Constructor Body.
//
// Example:

class Product {
  String name;
  double price;
  double finalPrice;

  Product(this.name, this.price)
      : finalPrice = price + 100;
}


// Here:
// `finalPrice` Is Initialized
// Before The Constructor Body Runs.
//
// Initializer Lists Are Useful When
// A Field Depends On Another Value.


// FINAL VARIABLES WITH CONSTRUCTORS :-
//
// A `final` Variable Can Be Assigned Only Once.
//
// A Constructor Is A Common Place
// To Initialize Final Fields.

class StudentResult {
  final String name;
  final int marks;

  StudentResult(this.name, this.marks);
}


// Once The Object Is Created,
// These Values Cannot Be Changed.

var result = StudentResult('Hamza', 90);


// result.name = 'Ali';   // Error
// result.marks = 80;     // Error


// REQUIRED NAMED PARAMETERS :-
//
// Dart Allows Us To Make Constructor Parameters Required.
//
// We Use The `required` Keyword
// With Named Parameters.

class Developer {
  String name;
  String language;

  Developer({
    required this.name,
    required this.language,
  });
}


// Now Both Values Must Be Provided.

var developer = Developer(
  name: 'Hamza',
  language: 'Dart',
);


// `required` Makes Our Constructor
// Safer And Easier To Understand.


// DEFAULT VALUES :-
//
// We Can Give Parameters Default Values.
//
// If The Value Is Not Provided,
// Dart Uses The Default Value.

class App {
  String name;
  String version;

  App({
    required this.name,
    this.version = '1.0.0',
  });
}


// `version` Is Optional.
//
// If We Do Not Provide It,
// Dart Uses `1.0.0`.

var app = App(name: 'My App');


// We Can Also Provide Our Own Value:

var anotherApp = App(
  name: 'My App',
  version: '2.0.0',
);


// REDIRECTING CONSTRUCTORS :-
//
// One Constructor Can Redirect To Another Constructor.
//
// This Allows Us To Reuse Constructor Logic
// Instead Of Writing The Same Code Again.

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  Employee.defaultEmployee()
      : this('Unknown', 0);
}


// `Employee.defaultEmployee()`
// Redirects To The Main `Employee()` Constructor.

var employee = Employee.defaultEmployee();


// CONST CONSTRUCTOR :-
//
// Dart Allows Us To Create Compile-Time Constant Objects.
//
// To Do This:
// - The Constructor Must Be `const`.
// - The Fields Must Be Final.
//
// Example:

class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);
}


// Now We Can Create A Constant Object:

const point = Point(10, 20);


// Because `Point` Is A Const Constructor,
// We Can Also Use It In Constant Expressions.

const anotherPoint = Point(30, 40);


// Const Objects Are Useful When
// The Object Never Needs To Change.


// FACTORY CONSTRUCTOR :-
//
// Dart Also Supports Factory Constructors.
//
// A Factory Constructor Can Return
// An Existing Object Instead Of Creating A New One.
//
// It Can Also Decide Which Object To Return.
//
// Example:

class Logger {
  static final Logger _instance = Logger._internal();

  factory Logger() {
    return _instance;
  }

  Logger._internal();
}


// Now:

var logger1 = Logger();
var logger2 = Logger();


// Both Variables Refer To The Same Logger Object.
//
// Factory Constructors Are Useful When
// We Need More Control Over Object Creation.
//
// For Example:
// - Returning An Existing Object
// - Creating Objects Based On Conditions
// - Implementing Singleton Patterns
// - Returning Different Implementations


// ASSERT IN CONSTRUCTORS :-
//
// We Can Use `assert()` To Check Conditions
// While Creating An Object.
//
// Example:

class BankAccount {
  String owner;
  double balance;

  BankAccount(this.owner, this.balance)
      : assert(balance >= 0, 'Balance cannot be negative');
}


// If The Condition Is False,
// The Assertion Fails In Debug Mode.
//
// This Helps Us Find Invalid Values
// During Development.


// MULTIPLE CONSTRUCTORS :-
//
// A Class Can Have A Default Constructor
// And Multiple Named Constructors.
//
// Example:

class UserProfile {
  String name;
  int age;

  UserProfile(this.name, this.age);

  UserProfile.guest()
      : name = 'Guest',
        age = 0;

  UserProfile.admin()
      : name = 'Admin',
        age = 30;
}


// Now We Have Different Ways
// To Create A UserProfile Object.

var normalUser = UserProfile('Hamza', 20);

var guestUser = UserProfile.guest();

var adminUser = UserProfile.admin();


// A SIMPLE RULE:
//
// Use A Constructor To Initialize An Object.
//
// Use `this` Parameters To Keep Constructors Clean.
//
// Use Named Constructors When You Need
// Different Ways To Create An Object.
//
// Use Initializer Lists When Fields
// Need To Be Initialized Before The Constructor Body.
//
// Use `required` When A Value Must Be Provided.
//
// Use Default Values When A Parameter
// Can Have A Common Default.
//
// Use `const` For Compile-Time Constant Objects.
//
// Use `factory` When You Need More Control
// Over How Objects Are Created.


// THE POWER OF DART :-
//
// Dart Constructors Give Us A Clean Way
// To Control Object Creation.
//
// With Constructors, We Can:
//
// - Initialize Objects
// - Pass Data Into Objects
// - Create Multiple Object-Creation Patterns
// - Use Named Constructors
// - Initialize Final Fields
// - Use Initializer Lists
// - Create Constant Objects
// - Validate Values With Assertions
// - Control Object Creation With Factory Constructors
//
// These Features Make Dart Constructors
// Powerful, Flexible, And Clean.
