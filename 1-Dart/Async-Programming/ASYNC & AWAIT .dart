// Async & Await :-


// ASYNCHRONOUS PROGRAMMING :-


// Sometimes Our Program Needs To Wait For Something To Finish.
// For Example:
// Fetching Data From An API
// Reading Data From A File
// Getting Data From A Database
//
// Instead Of Blocking The Whole Program,
// Dart Uses Asynchronous Programming.


/*
  FUTURE :- 

  A Future Represents A Value That Will Be Available
  Sometime In The Future.

  Future<String> -> Will Return A String Later.
  Future<int>    -> Will Return An Integer Later.
  Future<void>   -> Will Complete Without Returning A Value.
*/


// Example Of A Future:

Future<String> getName() async {

  return 'Hamza';

}


// ASYNC :-


// We Use `async` To Make A Function Asynchronous.
// An Async Function Always Returns A Future.
//
// `async` Allows Us To Use `await` Inside The Function.


Future<String> getCountry() async {

  return 'Pakistan';

}


// A simple rule:
//
// Use `async` When A Function Needs To Perform
// Asynchronous Work Or Use `await`.


// AWAIT :-


// We Use `await` To Wait For A Future To Complete.
// `await` Can Only Be Used Inside An `async` Function.
//
// After The Future Completes,
// `await` Gives Us Its Actual Value.


Future<void> main() async {

  String name = await getName();

  print(name);

}


// Here:
//
// getName() Returns Future<String>
// await Waits For The Future
// name Gets The Actual String Value
//
// Output:
// Hamza


// ASYNC + AWAIT TOGETHER :-


// `async` Makes The Function Asynchronous.
// `await` Waits For An Asynchronous Operation.


Future<String> fetchUser() async {

  await Future.delayed(
    const Duration(seconds: 2),
  );

  return 'User Data';

}


Future<void> loadUser() async {

  print('Loading...');

  String user = await fetchUser();

  print(user);

}


// Output:
//
// Loading...
// User Data
//
// The Function Waits For `fetchUser()` To Complete
// Before Continuing To The Next Line.


// MULTIPLE AWAITS :-


// We Can Use More Than One `await`
// Inside An Async Function.


Future<String> getUserName() async {

  await Future.delayed(
    const Duration(seconds: 1),
  );

  return 'Hamza';

}


Future<String> getUserCountry() async {

  await Future.delayed(
    const Duration(seconds: 1),
  );

  return 'Pakistan';

}


Future<void> getUserInfo() async {

  String name = await getUserName();

  String country = await getUserCountry();

  print(name);

  print(country);

}


// Here:
//
// First Dart Waits For The Name.
// Then Dart Waits For The Country.
// Then The Program Continues.


// ERROR HANDLING WITH ASYNC & AWAIT :-


// We Can Use `try` And `catch`
// To Handle Errors From Asynchronous Operations.


Future<void> fetchData() async {

  try {

    String data = await getUserData();

    print(data);

  } catch (e) {

    print('Something went wrong: $e');

  }

}


Future<String> getUserData() async {

  return 'Data Loaded';

}


// A simple rule:
//
// `try` -> Runs The Asynchronous Code
// `catch` -> Handles The Error

