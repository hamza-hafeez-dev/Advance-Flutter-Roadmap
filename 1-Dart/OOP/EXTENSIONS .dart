// Extensions :-


// Extensions Allow Us To Add New Functionality To Existing Types
// Without Changing The Original Class !

// We Can Add New Methods, Getters & Setters To Existing Types.
// This Makes Our Code Cleaner & More Reusable.


// BASIC EXTENSION :-


// Let's Say We Have A String:

String name = 'Hamza';

// We Can Create An Extension On String
// And Add Our Own Method To It.

extension StringExtensions on String {

  // This Method Will Return The String In Uppercase.

  String toUpperCaseFirst() {
    if (isEmpty) return this;

    return this[0].toUpperCase() + substring(1);
  }
}


// Now We Can Use Our New Method Directly On A String:

// print(name.toUpperCaseFirst());

// Output:
// Hamza


// `this` Refers To The Current String Value.
// So If name Is 'Hamza',
// `this` Means 'Hamza' Inside The Extension.


// EXTENSION WITH GETTER :-


// Extensions Can Also Add Getters.

extension NumberExtensions on int {

  // This Getter Checks If The Number Is Even.

  bool get isEvenNumber => this % 2 == 0;
}


// Now We Can Use It Like A Property:

int number = 10;

// print(number.isEvenNumber);

// Output:
// true


// We Don't Use `()` With A Getter
// Because It Works Like A Property.


// EXTENSION ON LIST :-


// We Can Also Extend Collections Like List.

extension ListExtensions<T> on List<T> {

  // This Getter Checks If The List Is Not Empty.

  bool get isNotEmptyList => isNotEmpty;
}


List<String> names = ['Hamza', 'Ali', 'Ahmed'];

// print(names.isNotEmptyList);

// Output:
// true


// EXTENSIONS WITH DIFFERENT TYPES :-


// Extensions Can Be Created For Many Dart Types.

// String
// int
// double
// List
// Set
// Map
// And Even Our Own Classes.


// A SIMPLE RULE:

// Use Extensions When You Want To Add Small,
// Reusable Functionality To An Existing Type.

// Extensions Help Keep Your Code Clean
// Without Modifying The Original Class.

