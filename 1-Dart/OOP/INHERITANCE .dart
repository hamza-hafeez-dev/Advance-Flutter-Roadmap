// Inheritance :-


// Inheritance Allows A Class To Reuse
// Properties And Methods From Another Class !
//
// In Dart, We Use `extends` To Create Inheritance.
//
// The Class Being Inherited From Is Called
// The Parent Class (Superclass).
//
// The Class That Inherits From It Is Called
// The Child Class (Subclass).


// PARENT CLASS :-


class Animal {
  String name = 'Animal';

  void eat() {
    print('$name is eating.');
  }
}


// CHILD CLASS :-


// `Dog` Extends `Animal`.
//
// This Means Dog Gets The Properties And Methods
// From The Animal Class.

class Dog extends Animal {
  void bark() {
    print('$name is barking.');
  }
}


Dog dog = Dog();

dog.eat();   // Inherited Method
dog.bark();  // Dog's Own Method


// Dog Can Use `name` And `eat()`
// Because They Are Inherited From Animal.



// METHOD OVERRIDING :-


// A Child Class Can Change The Behavior
// Of An Inherited Method.
//
// We Use `@override` To Override A Parent Method.

class Cat extends Animal {
  @override
  void eat() {
    print('$name is eating fish.');
  }
}


Cat cat = Cat();

cat.eat();


// `@override` Tells Dart That We Are
// Replacing The Parent Class Method
// With Our Own Implementation.



// USING `super` :-


// `super` Is Used To Access Members
// From The Parent Class.
//
// We Can Use It When We Want To Keep
// The Parent Behavior And Add Our Own Behavior.

class Bird extends Animal {
  @override
  void eat() {
    super.eat();

    print('$name is eating seeds.');
  }
}


Bird bird = Bird();

bird.eat();


// `super.eat()` Calls The Method
// From The Parent Class.
//
// Then We Add More Behavior In The Child Class.



// INHERITANCE WITH CONSTRUCTORS :-


// Constructors Are Not Inherited.
//
// But A Child Class Can Call The Parent Constructor
// By Using `super`.

class Person {
  String name;

  Person(this.name);
}


class Developer extends Person {
  Developer(super.name);

  void code() {
    print('$name is writing Dart code.');
  }
}


Developer developer = Developer('Hamza');

developer.code();


// `super.name` Passes The Value
// To The Parent Class Constructor.
//
// Dart Also Supports This Shorter Constructor Syntax,
// Which Keeps The Code Clean.



// A SIMPLE RULE TO REMEMBER :-


// `extends`  -> Creates Inheritance.
//
// `@override` -> Changes An Inherited Method.
//
// `super` -> Accesses The Parent Class.
//
// Parent Class -> Provides Common Features.
//
// Child Class -> Reuses Or Extends Those Features.
//
//
// Inheritance Helps Us Reuse Code
// Instead Of Writing The Same Code Again.
//
// This Is The Power Of Inheritance In Dart!
