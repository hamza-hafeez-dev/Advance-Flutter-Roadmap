// Classes & Objects :-


// Dart Is An Object-Oriented Programming Language.
// In Dart, Almost Everything Is An Object !
// A Class Is Used As A Blueprint To Create Objects.

// A Class Defines Data And Behavior.
// An Object Is An Instance Of A Class.


// CREATING A CLASS :-

// We Use The `class` Keyword To Create A Class.

class Person {
  // Instance Variables Store Data For Each Object.

  String name = 'Hamza';
  int age = 20;

  // Methods Define The Behavior Of An Object.

  void introduce() {
    print('My name is $name and I am $age years old.');
  }
}


// CREATING AN OBJECT :-

// An Object Is Created From A Class By Calling Its Constructor.

Person person = Person();


// We Use `.` To Access The Members Of An Object.

// Accessing Instance Variables:

print(person.name);
print(person.age);


// Calling An Instance Method:

person.introduce();


// CONSTRUCTORS :-

// A Constructor Is Used To Create And Initialize An Object.
// Dart Provides A Default Constructor If We Don't Create One.

// We Can Also Create Our Own Constructor.

class Student {
  String name;
  int age;

  Student(this.name, this.age);

  void showInfo() {
    print('Name: $name');
    print('Age: $age');
  }
}


// `this` Refers To The Current Object.

// `this.name` Means The `name` Property Of The Current Object.
// Dart Uses This Syntax To Initialize Instance Variables Easily.


// Creating Objects With Different Values:

Student student1 = Student('Hamza', 20);
Student student2 = Student('Ali', 22);

student1.showInfo();
student2.showInfo();


// FINAL INSTANCE VARIABLES :-

// We Can Use `final` When A Value Should Not Change
// After The Object Has Been Created.

class Product {
  final String name;
  final double price;

  Product(this.name, this.price);
}

Product product = Product('Laptop', 1200);

print(product.name);
print(product.price);


// NAMED CONSTRUCTORS :-

// Dart Also Allows Us To Create Named Constructors.
// They Can Make Different Ways Of Creating An Object Clearer.

class User {
  String name;
  int age;

  User(this.name, this.age);

  User.guest()
      : name = 'Guest',
        age = 0;
}


// Now We Have More Than One Way To Create A User.

User user1 = User('Hamza', 20);
User user2 = User.guest();

print(user1.name);
print(user2.name);


// CONST CONSTRUCTORS :-

// If An Object Never Changes,
// Dart Can Create It As A Compile-Time Constant.

// We Use `const` With A Constructor.

class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);
}

const point = Point(10, 20);

print(point.x);
print(point.y);


// DART ALSO HAS PRIMARY CONSTRUCTORS :-

// Dart 3.13 Introduced Primary Constructors.
// They Allow Us To Declare Fields And The Main Constructor
// In A More Concise Way.

class Coordinate(var int x, var int y);

var coordinate = Coordinate(10, 20);

print(coordinate.x);
print(coordinate.y);


// FINAL NOTE :-

// Class       -> Blueprint For Creating Objects
// Object      -> Instance Of A Class
// Property    -> Data Stored In An Object
// Method      -> Behavior Of An Object
// Constructor -> Used To Create And Initialize An Object
// `this`      -> Refers To The Current Object
// `final`     -> Value Cannot Be Changed After Initialization
// `const`     -> Creates Compile-Time Constant Objects


// Classes & Objects Are The Foundation Of OOP In Dart.
// They Help Us Keep Related Data And Behavior Together.

// In The Next OOP Topics,
// We Will Build On This Foundation With:
// Constructors -> Inheritance -> Mixins -> Extensions
