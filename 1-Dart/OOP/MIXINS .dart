// Mixins :-
//
// Mixins Are Used To Reuse Code In Multiple Classes !
//
// A Mixin Lets Us Add Methods And Properties To A Class
// Without Using Inheritance.
//
// In Dart, We Use The `with` Keyword To Apply A Mixin.


// Creating A Mixin :-

mixin Logger {
  void log(String message) {
    print(message);
  }
}


// Using A Mixin :-

class User with Logger {
  void login() {
    log('User Logged In');
  }
}


// `with` Adds The Mixin's Features To The Class.

var user = User();

user.login();


// A Class Can Use More Than One Mixin :-

mixin Camera {
  void takePhoto() {
    print('Photo Taken');
  }
}

mixin GPS {
  void getLocation() {
    print('Getting Location...');
  }
}


// We Can Add Multiple Mixins Using `with`.

class Phone with Camera, GPS {}

var phone = Phone();

phone.takePhoto();
phone.getLocation();


// MIXIN WITH `on` :-

// Sometimes We Want A Mixin To Work Only With A Specific Class.
// Dart Provides The `on` Keyword For This.

class Animal {
  void eat() {
    print('Animal Is Eating');
  }
}

mixin CanRun on Animal {
  void run() {
    print('Animal Is Running');
  }
}


// `CanRun` Can Only Be Used With `Animal`
// Or A Class That Extends `Animal`.

class Dog extends Animal with CanRun {}

var dog = Dog();

dog.eat();
dog.run();


// A Simple Rule:
//
// Use Mixins When You Want To Share The Same Behavior
// Between Multiple Classes.
//
// Use Inheritance When There Is A True Parent-Child Relationship.
//
// Mixins Are Great For Code Reuse Without Creating
// A Deep Inheritance Structure.


// THE POWER OF MIXINS IN DART :-
//
// Mixins Make It Easy To Combine Different Behaviors.
//
// For Example:
// A Class Can Have Camera + GPS + Logger
// Without Extending Multiple Classes.
//
// This Makes Dart Code More Reusable And Flexible.
