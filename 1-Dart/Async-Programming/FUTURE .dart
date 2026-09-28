// Future :-


// Future Is Used For Asynchronous Programming In Dart.
// It Represents A Value That Will Be Available Later.
//
// For Example:
// Getting Data From An API
// Reading Data From A File
// Getting Data From A Database
//
// These Operations Can Take Some Time.
// Dart Uses `Future` To Handle These Operations.



// BASIC FUTURE :-


// Future<String> Means:
// This Future Will Eventually Give Us A String.

Future<String> getName() {

  return Future.value('Hamza');

}


// Future<int> Will Eventually Give Us An int.

Future<int> getAge() {

  return Future.value(20);

}


// The Type Inside `Future<T>`
// Tells Us What Value The Future Will Return.
//
// Future<String> -> String
// Future<int>    -> int
// Future<bool>   -> bool
// Future<double> -> double



// FUTURE.DELAYED :-


// `Future.delayed` Creates A Future
// That Completes After A Given Amount Of Time.

Future<String> getMessage() {

  return Future.delayed(
    const Duration(seconds: 2),
    () => 'Hello From Future',
  );

}


// The Future Will Complete After 2 Seconds.
// Then It Will Give Us The String Value.



// ASYNC & AWAIT :-


// `async` Makes A Function Asynchronous.
// An Async Function Returns A Future.

Future<String> getCountry() async {

  return 'Pakistan';

}


// `await` Waits For A Future To Complete
// And Gives Us Its Actual Value.
//
// `await` Is Used Inside An `async` Function.

Future<void> showCountry() async {

  String country = await getCountry();

  print(country);

}


// Here:
// getCountry() -> Future<String>
// await -> Gets The Actual String Value
// country -> Stores The String



// FUTURE<void> :-


// When An Async Function Does Not Return A Value,
// We Can Use `Future<void>`.

Future<void> printMessage() async {

  print('Hello Dart');

}


// Future<void> Means:
// The Function Works Asynchronously
// But Does Not Return A Useful Value.



// THE POWER OF FUTURE :-


// Future Is Very Important In Dart And Flutter.
//
// We Use Future For:
// - API Calls
// - Database Operations
// - File Operations
// - Loading Data
//
// Future Allows Us To Work With Operations
// That Take Some Time Without Blocking The Program.
//
// In Flutter, You Will Use Future Very Often
// When Working With Real Application Data.
