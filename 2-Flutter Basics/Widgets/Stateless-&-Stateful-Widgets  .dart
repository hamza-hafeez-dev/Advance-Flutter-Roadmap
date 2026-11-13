import 'package:flutter/material.dart';

// Stateless & Stateful Widgets :-

// Widgets Are The Building Blocks Of Flutter UI !
// Every Screen, Button, Text & Layout Is Created Using Widgets.
//
// Flutter Has Two Important Types Of Widgets :-
//
// 1. StatelessWidget
// 2. StatefulWidget
//
// We Use These Widgets Depending On Whether Our UI Needs To Change Or Not.


// 1. STATELESS WIDGET :-
//
// StatelessWidget Is Used When Our UI Does Not Need To Change
// After It Has Been Built.
//
// It Does Not Store Its Own Changing State.
//
// Example :-
// Text, Icons & Static UI Components.

class MyTextWidget extends StatelessWidget {

  // Constructor :- 
  const MyTextWidget({super.key});

  @override
  Widget build(BuildContext context) {

    // Build Method Returns The UI Of Our Widget.

    return const Text(
      'Hello Flutter',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}


// USING STATELESS WIDGET :-
//
// We Can Use Our Custom Widget Inside Another Widget.

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless Widget'),
      ),

      body: const Center(
        child: MyTextWidget(),
      ),
    );
  }
}


// 2. STATEFUL WIDGET :-
//
// StatefulWidget Is Used When Our UI Needs To Change
// During The App's Runtime.
//
// It Can Store State Such As :-
//
// Counter Value
// Toggle Button Status
// Form Input
// Loading Status
//
// Whenever Its State Changes, Flutter Can Rebuild Its UI.


// CREATING A STATEFUL WIDGET :-
//
// A StatefulWidget Has Two Main Parts :-
//
// 1. StatefulWidget
// 2. State Class
//
// StatefulWidget Creates The Widget.
// State Class Stores Its Changing Data
// And Builds The UI.

class CounterPage extends StatefulWidget {

  const CounterPage({super.key});

  @override
  State<CounterPage> createState() {

    // Creates The State Object For This Widget.

    return _CounterPageState();
  }
}


// STATE CLASS :-
//
// State Class Contains Variables And Methods
// Which Control The Changing UI.

class _CounterPageState extends State<CounterPage> {

  // This Variable Stores The Counter Value.

  int counter = 0;


  // SETSTATE() :-
//
// setState() Tells Flutter That The State Has Changed.
//
// Flutter Calls The Build Method Again
// To Update The UI.

  void increaseCounter() {

    setState(() {

      counter++;

      // Counter Value Increases By One.
      // Flutter Rebuilds The UI After This Change.

    });
  }


  @override
  Widget build(BuildContext context) {

    // This UI Changes Whenever Counter Changes.

    return Scaffold(

      appBar: AppBar(
        title: const Text('Stateful Widget'),
      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            const Text(
              'Counter Value',
              style: TextStyle(fontSize: 20),
            ),

            // Showing The Current Counter Value.

            Text(
              '$counter',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // Button To Increase Counter.

            ElevatedButton(
              onPressed: increaseCounter,
              child: const Text('Increase Counter'),
            ),

          ],
        ),
      ),
    );
  }
}


// IMPORTANT DIFFERENCE :-
//
// StatelessWidget
// -> Does Not Have Its Own Mutable State.
// -> Used For Static UI.
// -> UI Depends On Constructor Values Or Other Data.
//
// StatefulWidget
// -> Has A Separate State Class.
// -> Stores Changing Data.
// -> UI Can Update When State Changes.
//
//
// IMPORTANT RULE :-
//
// Use StatelessWidget When UI Does Not Need
// To Manage Changing State.
//
// Use StatefulWidget When UI Needs To Change
// Based On User Interaction Or Other Events.
//
//
//
// SIMPLE EXAMPLE :-
//
// Text('Hello')              -> Stateless UI
//
// Counter Value Changes     -> Stateful UI
//
// Button Click Updates UI   -> Stateful UI
