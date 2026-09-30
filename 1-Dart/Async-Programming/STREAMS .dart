// Streams :-


// Streams Are Used To Handle A Continuous Flow Of Data In Dart !
// Instead Of Getting One Value At A Time,
// A Stream Can Give Us Multiple Values Over Time.

// For Example:
// Data From An API
// User Input
// Messages
// File Changes
// Real-Time Updates


// STREAM BASICS :-


// A Stream Is Like A Flow Of Data.
// New Data Can Come Into The Stream At Different Times.

// We Can Listen To A Stream And Handle Each Value
// Whenever It Is Available.


// Creating A Simple Stream :-


// `Stream.fromIterable` Creates A Stream From A Collection.

Stream<int> numbers = Stream.fromIterable([1, 2, 3, 4, 5]);


// We Can Listen To The Stream Using `listen`.

numbers.listen((number) {
  print(number);
});


// The `listen` Method Runs Whenever A New Value Comes From The Stream.


// STREAM WITH STRING VALUES :-


Stream<String> names = Stream.fromIterable([
  'Hamza',
  'Ali',
  'Ahmed',
]);

names.listen((name) {
  print(name);
});


// STREAM CONTROLLER :-


// `StreamController` Gives Us More Control Over A Stream.
// We Can Add Data To The Stream Whenever We Want.

import 'dart:async';

final controller = StreamController<int>();


// Add Data To The Stream:

controller.add(10);
controller.add(20);
controller.add(30);


// Listen To The Stream:

controller.stream.listen((value) {
  print(value);
});


// The Listener Receives The Values Added To The Stream.


// STREAM EVENTS :-


// A Stream Can Have Different Events.

// Data Event
// Error Event
// Done Event


// DATA EVENT :-


// This Event Happens When New Data Is Available.

controller.stream.listen(
  (value) {
    print('Value: $value');
  },
);


// ERROR EVENT :-


// A Stream Can Also Send Errors.
// We Can Handle Those Errors Using `onError`.

controller.stream.listen(
  (value) {
    print(value);
  },
  onError: (error) {
    print('Error: $error');
  },
);


// DONE EVENT :-


// `onDone` Runs When The Stream Has Finished Sending Data.

controller.stream.listen(
  (value) {
    print(value);
  },
  onDone: () {
    print('Stream Finished');
  },
);


// CLOSE THE STREAM :-


// When We Are Finished With A StreamController,
// We Should Close It.

controller.close();


// ASYNC* AND YIELD :-


// Dart Also Gives Us A Simple Way To Create Streams
// Using `async*` And `yield`.


// `async*` Means The Function Returns A Stream.
// `yield` Sends A Value Into The Stream.

Stream<int> getNumbers() async* {
  yield 1;
  yield 2;
  yield 3;
  yield 4;
}


getNumbers().listen((number) {
  print(number);
});


// Each `yield` Sends A New Value To The Stream.


// STREAM WITH DELAY :-


// Streams Are Very Useful For Data That Comes Over Time.
// We Can Use `Future.delayed` To Simulate Delayed Data.

Stream<int> countNumbers() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));

    yield i;
  }
}


// The Stream Sends A New Number Every Second.

countNumbers().listen((number) {
  print(number);
});


// LISTENING TO A STREAM WITH `await for` :-


// We Can Also Read Stream Values Using `await for`.
// This Makes It Easy To Handle Stream Data One By One.

Future<void> readNumbers() async {
  await for (final number in countNumbers()) {
    print(number);
  }
}

readNumbers();


// A simple rule:
//
// Use `Stream` when data can arrive multiple times over time.
// Use `Future` when you are waiting for one result.
//
// Future  -> One Value
// Stream  -> Multiple Values Over Time


// STREAMS ARE POWERFUL IN DART :-


// Streams Are Used A Lot In Real Flutter Applications.
// They Can Help Us Handle:
//
// Real-Time Data
// API Updates
// User Events
// Chat Messages
// Notifications
// Database Changes
// Live Data


// Streams Are One Of The Most Important Parts Of
// Asynchronous Programming In Dart.
